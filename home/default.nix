{ ... }:

{

  imports = [
    ./packages.nix
    ./shell.nix
    ./git.nix
    ./font.nix
    ./desktop-overrides.nix
    ./firefox.nix
    ./homepage.nix
    ./thumnailer.nix
    ./direnv.nix
  ];

  home = {
    username = "sample";
    homeDirectory = "/home/sample";
    stateVersion = "26.05";
  };

  # Enable Home Manager
  programs.home-manager.enable = true;
}
