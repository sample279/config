{ inputs, pkgs, ... }:

{
  # List of packages to install for the user
  home.packages = with pkgs; [
    aria2
    bat
    btop-cuda
    curl
    dust
    emacs
    ente-auth
    evince
    eza
    fastfetch
    fd
    gnome-calculator
    imv
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    jq
    kitty
    krita
    lazygit
    lazydocker
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
    yazi
    yt-dlp
  ];
}
