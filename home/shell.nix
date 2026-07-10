{ pkgs, ... }:

{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = "";

    shellAliases = {
      btw = "echo i use nixos btw";
      nrs = "sudo nixos-rebuild switch --flake /etc/nixos#sample";
      nrst = "sudo nixos-rebuild switch --flake /etc/nixos#sample --show-trace";
      ncg = "nix-collect-garbage -d";
    };
  };

  home.packages = [
    pkgs.bash-completion
  ];
}
