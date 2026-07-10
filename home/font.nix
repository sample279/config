{ config, pkgs, lib, ... }:

{
  # Font configuration
  fonts.fontconfig.enable = true;

  # List of packages to install for the user
  home.packages = with pkgs; [
    # Fonts (ensure noto-fonts-cjk-sans is included if needed for CJK)
    nerd-fonts.fira-code
    nerd-fonts.jetbrains-mono
    nerd-fonts.iosevka
  ];
}
