{ ... }:

{
  imports = [
    ./packages.nix
    ./shell.nix
    ./git.nix
    ./starship.nix
    ./kitty.nix
    ./font.nix
    ./hyprland.nix
    ./quickshell.nix
  ];

  home = {
    username = "sample";
    homeDirectory = "/home/sample";
    stateVersion = "26.05";
  };

  # Enable Home Manager
  programs.home-manager.enable = true;
}
