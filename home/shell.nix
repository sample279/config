{ pkgs, ... }:

{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      eval "$(direnv hook bash)"
    '';

    shellAliases = {
      btw = "echo i use nixos btw";
      nrs = "sudo nixos-rebuild switch --flake ~/nixos-config#sample";
      nrst = "sudo nixos-rebuild switch --flake ~/nixos-config#sample --show-trace";
      ncg = "sudo nix-collect-garbage -d";
      nso = "sudo nix store optimise";
      nru = "nix flake update ~/nixos-config && nrs";
      nrup= "nix flake update nixpkgs --flake ~/nixos-config && nrs";
      ls = "eza -lh --group-directories-first --icons=auto";
      ff = "fzf --preview 'bat --style=numbers --color=always {}'";
      emacs = "emacsclient -c & disown";
      nv = "nvim";
      pg = "pgadmin4";
    };
  };

  programs.fzf = {
      enable = true;
      enableBashIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
  };

  home.packages = with pkgs; [
    bash-completion
  ];
}
