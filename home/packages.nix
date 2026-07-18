{ inputs, pkgs, ... }:

{
  # List of packages to install for the user
  home.packages = with pkgs; [
    aria2
    bat
    btop-cuda
    cmake
    curl
    direnv
    dust
    emacs-pgtk
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
    localsend
    lutris
    man
    mpv
    nautilus
    neovim
    opencode
    pgadmin4
    protonplus
    pywalfox-native
    ripgrep
    rar
    starship
    tldr
    typora
    unzip
    vesktop
    yazi
    yt-dlp
  ];
}
