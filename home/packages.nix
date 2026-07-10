{ pkgs, ... }:

{
  # List of packages to install for the user
  home.packages = with pkgs; [
    bash-completion
    bat
    btop-cuda
    cava
    curl
    dust
    eza
    fastfetch
    fd
    fzf
    lazygit
    librewolf
    localsend
    mpv
    neovim
    protonplus
    quickshell
    ripgrep
    tldr
    unrar
    unzip
    vesktop
    wget
    wiremix
    zoxide
  ];
}
