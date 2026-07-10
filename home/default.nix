{ ... }:

{
  imports = [
    ./packages.nix # User packages
    ./shell.nix
    ./git.nix
    ./starship.nix
    ./kitty.nix
  ];

  home = {
    username = "sample";
    homeDirectory = "/home/sample";
    stateVersion = "26.05";
  };

  # Enable Home Manager
  programs.home-manager.enable = true;
}
