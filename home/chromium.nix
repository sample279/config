{ pkgs, lib, ... }:
let
  fetchCrx = { id, sha256, version }: {
    inherit id;
    crxPath = builtins.fetchurl {
      url = "https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=130.0&x=id%3D${id}%26installsource%3Dondemand%26uc";
      name = "${id}.crx";
      inherit sha256;
    };
    inherit version;
  };
in
{
  programs.chromium = {
    enable = true;
    package = pkgs.ungoogled-chromium;

    commandLineArgs = [
      "--ozone-platform=wayland"
      "--enable-features=UseOzonePlatform,WaylandWindowDecorations,WebUIDarkMode"
      "--force-dark-mode"
      "--gtk-version=4"
    ];

    extensions = [
      (fetchCrx { id = "nngceckbapebfimnlniiiahkandclblb"; sha256 = "sha256-PwXLkgGS9YjvBRUHgwiEtqiXkXmWngv3xA4Boqj9f74="; version = "2026.7.0"; }) # Bitwarden Password Manager
      (fetchCrx { id = "mpbjkejclgfgadiemmefgebjfooflfhl"; sha256 = "sha256-u2uOMy9VJ1BwEuxJRGJhYPbU2D8YKSEA+6j7hKtuF9w="; version = "3.4.0"; }) # Buster: Captcha Solver for Humans
      (fetchCrx { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; sha256 = "sha256-ncsb1tytQ4kt3AKP9l+YLfPtuhNammRF5PpxZx43qhM="; version = "4.9.129"; }) # Dark Reader
      (fetchCrx { id = "edibdbjcniadpccecjdfdjjppcpchdlm"; sha256 = "sha256-RrbNwwND3Sl8bTTZF5xeHMHuQEyOY7FU3vFY4TAQw30="; version = "1.1.9"; }) # I still don't care about cookies
      (fetchCrx { id = "mmioliijnhnoblpgimnlajmefafdfilb"; sha256 = "sha256-eLB9vM9jqyY+EMP1h8654m/6CJiRN0XymHF2Hcu6V1Y="; version = "2.5.0"; }) # Shazam
      (fetchCrx { id = "icpgjfneehieebagbmdbhnlpiopdcmna"; sha256 = "sha256-ZphGiFw16UgGyTBP3rLOqz4sTtbKDtYS75gtr6XxEfY="; version = "3.1.6"; }) # New Tab Redirect
      (fetchCrx { id = "pkehgijcmpdhfbdbbnkijodmdjhbjlgp"; sha256 = "sha256-r7/6OKSQ1D/45WoTsKS0+95ch7BtU9kImNnn4vzQj0A="; version = "2026.6.16"; }) # Privacy Badger
      (fetchCrx { id = "jplgfhpmjnbigmhklmmbgecoobifkmpa"; sha256 = "sha256-s4H8dj67EkZ77UuPspBQ0td7a4aLnqr35vqRxrkuAUM="; version = "1.3.5"; }) # Proton VPN: Fast & Secure
      (fetchCrx { id = "gebbhagfogifgggkldgodflihgfeippi"; sha256 = "sha256-0ZO+7AY5dcy1AOXPtZ9sSPcj9Wl2RQkE9oOFZq7ESqM="; version = "4.0.4"; }) # Return YouTube Dislike
      (fetchCrx { id = "ddkjiahejlhfcafbddmgiahcphecmpfh"; sha256 = "sha256-ap5qHNULryLU6Ynjw1JcSRvunmDJNvdzHsca3Baokgg="; version = "2026.723.1724"; }) # uBlock Origin Lite
      (fetchCrx { id = "khncfooichmfjbepaaaebmommgaepoid"; sha256 = "sha256-hiKyaY3/CLquJqjDY49STmbfwSVi5yhpSBn6HvLigCM="; version = "1.6.9"; }) # Unhook - Remove YouTube Recommended & Shorts
      (fetchCrx { id = "nffaoalbilbmmfgbnbgppjihopabppdk"; sha256 = "sha256-bJUxLYTCx+UCbpxZW0+By4NfK2oiYxWbhy+766a0dUY="; version = "0.10.2"; }) # Video Speed Controller
      (fetchCrx { id = "jghecgabfgfdldnmbfkhmffcabddioke"; sha256 = "sha256-dSLS7Km/5gbb07xEYACAOs9EBfvbJGlqx4qwFkKV95U="; version = "2.4.0"; }) # Volume Master
    ];
  };
}
