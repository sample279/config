{ ... }:

{
  zramSwap.enable = true;

  hardware.enableRedistributableFirmware = true;
 
  nixpkgs.config.allowUnfree = true;

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  environment.sessionVariables = {
    ELECTRON_OZONE_PLATFORM_HINT = "auto";
    NIXOS_OZONE_WL = "1";
  };

  programs.nix-ld.enable = true;
  programs.dconf.enable = true;
  security.polkit.enable = true;
}
