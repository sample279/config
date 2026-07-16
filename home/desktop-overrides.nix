{ ... }:
{
  xdg.desktopEntries.emacs = {
      name = "Emacs";
      genericName = "Text Editor";
      comment = "Edit text";

      exec = "emacsclient -c -a \"\" %F";

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
}
