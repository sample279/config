{ pkgs, lib, ... }:

let
  icons = [
    {
      name = "github";
      url = "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/github-light.svg";
      hash = "sha256-/z0Yv50GoifM/VVpdLL880T4Mz/lKGOlJcvV5D/eoAQ=";
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
    {
      name = "whatsapp";
      url = "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/whatsapp.svg";
      hash = "sha256-Yp/4FGnBIAoAw85w2Cmuj6pIcvpPeG2tiQ1klmaV/UI=";
    }
    {
      name = "enteauth";
      url = "https://cdn.jsdelivr.net/gh/homarr-labs/dashboard-icons/svg/ente-auth.svg";
      hash = "sha256-bW/IU1QbC6NwKZkVrvX9GnGPIa97ExOUo/9EDr99ITM=";
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

  xdg.desktopEntries.whatsapp = {
    name = "WhatsApp";
    comment = "Send and receive messages";
    exec = "chromium --profile-directory=Default --app=https://web.whatsapp.com";
    icon = "whatsapp";
    terminal = false;
    categories = [ "Network" "InstantMessaging" ];
    startupNotify = true;
    settings = {
      StartupWMClass = "chrome-web.whatsapp.com__-Default";
    };
  };

  xdg.desktopEntries.btop = {
    name = "btop";
    genericName = "System Monitor";
    comment = "Resource monitor that shows usage and stats for processor, memory, disks, network and processes";
    icon = "btop";
    exec = "kitty --app-id=btop-float -e btop";
    terminal = false;
    categories = [ "System" "Monitor" "ConsoleOnly" ];
  };

  xdg.desktopEntries.LocalSend = {
    name = "LocalSend";
    genericName = "An open source cross-platform alternative to AirDrop";
    icon = "localsend";
    exec = "env GTK_CSD=0 localsend_app %U";
    terminal = false;
    categories = [ "GTK" "FileTransfer" "Utility" ];
    startupNotify = true;
    settings = {
      StartupWMClass = "localsend_app";
    };
  };

  xdg.desktopEntries.yazi = {
    name = "Yazi";
    comment = "Blazing fast terminal file manager written in Rust, based on async I/O";
    icon = "yazi";
    exec = "kitty --app-id=yazi-float -e yazi %f";
    terminal = false;
    categories = [ "System" "FileManager" "FileTools" "ConsoleOnly" ];
    mimeType = [ "inode/directory" ];
  };
}
