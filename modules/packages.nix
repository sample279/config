{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
     neovim
     yaru-theme
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
     gnome-themes-extra
     bash-completion
  ];
}
