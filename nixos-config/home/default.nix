{ pkgs, ... }:

{

  imports = [
    ./packages.nix
    ./shell.nix
    ./git.nix
    ./font.nix
    ./desktop-overrides.nix
    ./firefox.nix
    ./homepage.nix
    ./thumbnailer.nix
    ./direnv.nix
    ./chromium.nix
  ];

  home = {
    username = "sample";
    homeDirectory = "/home/sample";
    stateVersion = "26.05";
  };

  # Enable Home Manager
  programs.home-manager.enable = true;

  gtk = {
    enable = true;
    theme = {
      name = "adw-gtk3";
      package = pkgs.adw-gtk3;
    };
  };
}
