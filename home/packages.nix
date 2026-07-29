{ pkgs, ... }:

{
  # List of packages to install for the user
  home.packages = with pkgs; [
    adw-gtk3
    air
    aria2
    bat
    btop-cuda
    cliamp
    cmake
    curl
    dust
    emacs-pgtk
    ente-auth
    evince
    eza
    fastfetch
    fd
    ffmpeg-headless
    ffmpegthumbnailer
    gnome-calculator
    go
    gopls
    (go-migrate.overrideAttrs (old: {
        tags = [ "postgres" ];
    }))
    sqlc
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
    protonplus
    pywalfox-native
    ripgrep
    rar
    starship
    tmux
    tldr
    typora
    unzip
    vesktop
    wineWow64Packages.stable
    winetricks
    yazi
    yt-dlp
  ];
}
