{ pkgs, ... }:

{
  # List of packages to install for the user
  home.packages = with pkgs; [
    bat
    btop-cuda
    cava
    curl
    dust
    eza
    fastfetch
    fd
    jq
    lazygit
    librewolf
    localsend
    mpv
    neovim
    protonplus
    quickshell
    qt6.qtdeclarative
    ripgrep
    tldr
    unrar
    unzip
    vesktop
    wget
    wiremix
  ];
}
