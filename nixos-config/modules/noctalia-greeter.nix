{ inputs, pkgs, ... }:

{
  imports = [
    inputs.noctalia-greeter.nixosModules.default
  ];

  programs.noctalia-greeter = {
    enable = true;

    passwordless-sync-users = [ "sample" ];

    # Optional
    greeter-args = "";

    settings = {
      cursor = {
        theme = "Adwaita";
        size = 24;
        path = "${pkgs.adwaita-icon-theme}/share/icons";
      };

      keyboard = {
        layout = "us";
      };
    };
  };
}
