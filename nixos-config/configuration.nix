{ inputs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/default.nix
    ];

  nixpkgs.overlays = [ inputs.millennium.overlays.default ];

  system.stateVersion = "26.05"; 
}
