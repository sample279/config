{ pkgs, inputs, ... }:

{
  home.packages = [
    inputs.freesmlauncher.packages.${pkgs.stdenv.hostPlatform.system}.freesmlauncher
  ];
}
