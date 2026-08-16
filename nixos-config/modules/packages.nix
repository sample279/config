{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    caligula
    cmake
    gcc
    gnumake
    gnome-themes-extra
    libtool
    libvterm
    nixd
    nixfmt
    pgadmin4-desktopmode
    xdg-user-dirs
    xdg-terminal-exec
    xwayland-satellite
    (papirus-icon-theme.override { color = "yaru"; })
  ];
}
