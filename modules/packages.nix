{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    caligula
    cmake
    gcc
    gnumake
    gnome-disk-utility
    gnome-themes-extra
    libtool
    libvterm
    nixd
    nixfmt
    pgadmin4
    xdg-desktop-portal-gtk
    xdg-user-dirs
    xdg-terminal-exec
    xwayland-satellite
    yaru-theme
  ];
}
