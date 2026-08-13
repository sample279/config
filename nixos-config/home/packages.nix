{ pkgs, ... }:

{
  # List of packages to install for the user
  home.packages = with pkgs; [
    adw-gtk3
    air
    ani-cli
    aria2
    bat
    btop-cuda
    clang-tools
    cliamp
    codecrafters-cli
    curl
    (discord.override { withVencord = true; })
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
    gpu-screen-recorder
    sqlc
    stow
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
    mpvpaper
    nautilus
    neovim
    opencode
    proton-vpn
    protonplus
    ripgrep
    rar
    tmux
    tldr
    typora
    unzip
    yazi
    yt-dlp
  ];
}
