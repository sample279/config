{ ... }:
{
  xdg.desktopEntries.emacsclient = {
    name = "Emacs (Client)";
    noDisplay = true;
  };

  xdg.desktopEntries.localsend = {
    name = "LocalSend";
    exec = "env GTK_CSD=0 localsend_app";
    terminal = false;
    categories = [ "Network" ];
  };
}
