{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    package = pkgs.millennium-steam;

    extraPackages = with pkgs; [
      adwaita-icon-theme
    ];
  };
}
