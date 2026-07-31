{ pkgs, ... }:

{
  programs.firefox = {
    enable = true;

    nativeMessagingHosts = with pkgs; [
      pywalfox-native
    ];
  };
}
