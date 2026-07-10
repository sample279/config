{ pkgs, ... }:

{
  users.users.sample = {
    isNormalUser = true;
    description = "sample";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
