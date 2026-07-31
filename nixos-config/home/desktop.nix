{ pkgs, lib, ... }:

let
  icons = [
    {
      name = "github";
      url = "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/github.svg";
      hash = "sha256-zfuC/xTIwkhOrLqdIR2GzQyZPJM4VcrSsDYzQU+hDds=";
    }
    {
      name = "opencode";
      url = "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/opencode.svg";
      hash = "sha256-Xus6XxTbvMwDERKW7P080FzJiEQVDU+dd7qSGEeVM4A=";
    }
    {
      name = "youtube-music";
      url = "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/youtube-music.svg";
      hash = "sha256-PZK9hQapa1ZvHKmVCWQhBy7d7wl6ydULUOrLctM9leQ=";
    }
  ];
in
{
  xdg.dataFile = builtins.listToAttrs (map
    ({ name, url, hash }: {
      name = "icons/hicolor/256x256/apps/${name}.svg";
      value.source = pkgs.fetchurl { inherit url hash; };
    })
    icons);

  xdg.desktopEntries.emacs = {
    name = "Emacs";
    genericName = "Text Editor";
    comment = "Edit text";
    exec = "emacsclient -c %F";
    terminal = false;
    type = "Application";
    icon = "emacs";
    categories = [ "Development" "TextEditor" ];
    startupNotify = true;
  };

  xdg.desktopEntries.emacsclient = {
    name = "Emacs (Client)";
    noDisplay = true;
  };

  xdg.desktopEntries.youtube-music = {
    name = "YouTube Music";
    comment = "Listen to music on YouTube";
    exec = "chromium --profile-directory=Default --app=https://music.youtube.com";
    icon = "youtube-music";
    terminal = false;
    categories = [ "Audio" "Music" "Player" ];
    startupNotify = true;
    settings = {
      StartupWMClass = "chrome-music.youtube.com__-Default";
    };
  };

  xdg.desktopEntries.opencode = {
    name = "OpenCode";
    comment = "AI-powered coding assistant";
    exec = "kitty --app-id=opencode -e opencode";
    icon = "opencode";
    terminal = false;
    categories = [ "Development" "Utility" ];
    startupNotify = true;
  };

  xdg.desktopEntries.github = {
    name = "GitHub";
    comment = "Build software together";
    exec = "chromium --profile-directory=Default --app=https://github.com";
    icon = "github";
    terminal = false;
    categories = [ "Network" "Development" ];
    startupNotify = true;
    settings = {
      StartupWMClass = "chrome-github.com__-Default";
    };
  };
}
