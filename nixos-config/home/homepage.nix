{ ... }:

{
  systemd.user.services = {
    homepage = {
      Unit = {
        Description = "Homepage Bookmark Server";
        After = "graphical-session-pre.target";
      };

      Service = {
        Type = "simple";
        WorkingDirectory = "%h/.local/share/home-server";
        EnvironmentFile = "%h/.local/share/home-server/.env";
        ExecStart = "%h/.local/share/home-server/homepage-server";
        Restart = "on-failure";
        RestartSec = 3;
      };

      Install = {
        WantedBy = [ "graphical-session.target" ];
      };
    };

    homepage-build = {
      Unit = {
        Description = "Rebuild, restart, and push homepage-server";
        After = "homepage.service";
      };

      Service = {
        Type = "oneshot";
        WorkingDirectory = "%h/.local/share/home-server";
        EnvironmentFile = "%h/.local/share/home-server/.env";
        ExecStart = ''/run/current-system/sw/bin/bash -c 'nix-shell -p go --run "go build -o homepage-server ."' '';
        ExecStartPost = [
          ''/run/current-system/sw/bin/bash -c 'git add -A && git diff --cached --quiet || git commit -m "auto: update" && git push' ''
          "systemctl --user restart homepage.service"
        ];
      };
    };
  };

  systemd.user.paths = {
    homepage-build = {
      Unit = {
        Description = "Watch homepage-server files for changes";
      };

      Path = {
        PathChanged = [
          "%h/.local/share/home-server/"
          "%h/.local/share/home-server/store/"
          "%h/.local/share/home-server/gitsync/"
          "%h/.local/share/home-server/static/"
          "%h/.local/share/home-server/data/"
        ];
      };

      Install = {
        WantedBy = [ "graphical-session.target" ];
      };
    };
  };
}
