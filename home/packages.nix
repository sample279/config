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
    firefox
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
