{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    caligula
    gcc
    gnome-disk-utility
    gnome-themes-extra
    nwg-look
    xdg-desktop-portal-gtk
    xdg-user-dirs
    xdg-terminal-exec
    xwayland-satellite
    yaru-theme
  ];
}
