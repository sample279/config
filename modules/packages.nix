{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    caligula
    gcc
    gnome-disk-utility
    gnome-themes-extra
    nautilus
    nwg-look
    xdg-user-dirs
    yaru-theme
  ];
}
