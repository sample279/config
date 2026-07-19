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
      ls = "eza -lh --group-directories-first --icons=auto";
      ff = "fzf --preview 'bat --style=numbers --color=always {}'";
      emacs = "emacsclient -c & disown";
      nv = "nvim";
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

  home.packages = with pkgs; [
    bash-completion
  ];
}
