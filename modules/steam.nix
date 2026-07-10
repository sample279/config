{ pkgs, ... }:

{
  programs.steam = {
    enable = true;

    extraPackages = with pkgs; [
      adwaita-icon-theme
    ];
  };
}
