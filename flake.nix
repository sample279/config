{
  description = "Sample's NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    hyprland.url = "github:hyprwm/Hyprland/v0.55.4";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, ... }: {
    nixosConfigurations.sample = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = {
        inherit inputs;
      };

      modules = [
        ./configuration.nix
      ];
    };
  };
}
