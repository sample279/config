{ pkgs, ... }:

{
  # List of packages to install for the user
  home.packages = with pkgs; [
    aria2
    bat
    btop-cuda
    curl
    dust
    ente-auth
    evince
    eza
    fastfetch
    fd
    gnome-calculator
    imv
    jq
    kitty
    krita
    lazygit
    lazydocker
    librewolf
    localsend
    man
    mpv
    nautilus
    neovim
    pgadmin4
    protonplus
    ripgrep
    starship
    tldr
    typora
    unrar
    unzip
    vesktop
    wget
    wiremix
    yazi
    yt-dlp
  ];
}
