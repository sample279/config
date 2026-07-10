{ pkgs, ... }:

{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = "";

    shellAliases = {
      btw = "echo i use nixos btw";
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-config#sample";
      nrst = "sudo nixos-rebuild switch --flake ~/nixos-config#sample --show-trace";
      ncg = "nix-collect-garbage -d";
    };
  };

  home.packages = [
    pkgs.bash-completion
  ];
}
