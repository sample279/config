{ pkgs, ... }:

{
  services.gvfs.enable = true;
  services.fstrim.enable = true;
  services.dbus.enable = true;
  services.accounts-daemon.enable = true;

  services.emacs = {
    enable = true;
    package = pkgs.emacs30-pgtk;
    startWithGraphical = true;
  };
}
