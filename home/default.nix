{ ... }:

{

  imports = [
    ./packages.nix
    ./shell.nix
    ./git.nix
    ./font.nix
    ./desktop-overrides.nix
    ./firefox.nix
  ];

  home = {
    username = "sample";
    homeDirectory = "/home/sample";
    stateVersion = "26.05";
  };

  # Enable Home Manager
  programs.home-manager.enable = true;
}
