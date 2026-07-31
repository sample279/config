{ pkgs, ... }:
{
  boot.loader = {
    efi.canTouchEfiVariables = true;
 
    systemd-boot = {
      enable = true;
      configurationLimit = 3;
    };
  };

  boot.kernelPackages = pkgs.linuxPackages_latest;
}
