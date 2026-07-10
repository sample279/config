{ pkgs, ... }:

{
  # List of packages to install for the user
  home.packages = with pkgs; [
    # Utilities
    btop-cuda # System monitor
    fastfetch # System info tool
    ripgrep # Fast grep alternative
    fd # Find alternative
    fzf # Fuzzy finder
    lazygit # TUI for git
    unzip
    unrar
    wget
    localsend
    eza
    mpv
    wiremix
    librewolf
    nautilus
    cava
    curl
    vesktop
    nwg-look
    caligula
    xdg-user-dirs
    zoxide
    protonplus
    tldr
    quickshell
    gnome-themes-extra
    dust
    bat
    gnome-disk-utility
  ];
}
