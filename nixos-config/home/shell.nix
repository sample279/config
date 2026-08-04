{ pkgs, ... }:

{
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      eval "$(direnv hook bash)"
    '';

    shellAliases = {
      a = "alias | bat -l bash";
      btw = "echo i use nixos btw";
      cfg = "cd ~/config";
      dust = "dust -s -r -x";
      emacs = "emacsclient -c & disown";
      ff = "fzf --preview 'bat --style=numbers --color=always {}'";
      ls = "eza -lh --group-directories-first --icons=auto";
      ncg = "sudo nix-collect-garbage -d";
      nrs = "sudo nixos-rebuild switch --flake ~/config/nixos-config#sample";
      nrst = "sudo nixos-rebuild switch --flake ~/config/nixos-config#sample --show-trace";
      nru = "nix flake update --flake ~/config/nixos-config && nrs";
      nrup= "nix flake update nixpkgs --flake ~/config/nixos-config && nrs";
      nso = "sudo nix store optimise";
      nv = "nvim";
      pg = "pgadmin4";
      stowall = "cd ~/config/dotfiles && stow -t ~ * && cd -";
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
