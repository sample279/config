{ pkgs, ... }:
let
  # Fetches a .crx directly from Google's CRX distribution endpoint.
  # Base URL confirmed against home-manager's own chromium.nix module
  # (chromeWebStoreUpdateUrl) and Google's Chrome Enterprise admin docs.
  # The extra query params (response=redirect, acceptformat, prodversion,
  # nested x=id=...) are community-observed, not officially documented —
  # they replicate what Chromium's real update client sends. Known to work
  # in practice across multiple independent sources, but not contractually
  # guaranteed by Google. sha256 below MUST be filled in per-extension;
  # leave it empty and `nix build` will fail with the correct hash to paste.
  fetchCrx =
    { id, sha256 ? "" }:
    pkgs.fetchurl {
      url = "https://clients2.google.com/service/update2/crx?response=redirect&acceptformat=crx2,crx3&prodversion=120.0&x=id%3D${id}%26installsource%3Dondemand%26uc";
      name = "${id}.crx";
      inherit sha256;
    };

  # id      -> from the Chrome Web Store URL
  # version -> MUST match the version inside the fetched crx's manifest.json,
  #            or Chromium will refuse to load it as stale/mismatched.
  #            Check by unpacking the crx once, or via chrome-stats.com.
  # sha256  -> leave "" first; nix build will report the correct hash.
  extensionList = [
    { id = "nngceckbapebfimnlniiiahkandclblb"; version = ""; sha256 = ""; } # Bitwarden Password Manager
    { id = "mpbjkejclgfgadiemmefgebjfooflfhl"; version = ""; sha256 = ""; } # Buster: Captcha Solver for Humans
    { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; version = ""; sha256 = ""; } # Dark Reader
    { id = "edibdbjcniadpccecjdfdjjppcpchdlm"; version = ""; sha256 = ""; } # I still don't care about cookies
    { id = "mmioliijnhnoblpgimnlajmefafdfilb"; version = ""; sha256 = ""; } # Shazam
    { id = "icpgjfneehieebagbmdbhnlpiopdcmna"; version = ""; sha256 = ""; } # New Tab Redirect
    { id = "pkehgijcmpdhfbdbbnkijodmdjhbjlgp"; version = ""; sha256 = ""; } # Privacy Badger
    { id = "jplgfhpmjnbigmhklmmbgecoobifkmpa"; version = ""; sha256 = ""; } # Proton VPN: Fast & Secure
    { id = "gebbhagfogifgggkldgodflihgfeippi"; version = ""; sha256 = ""; } # Return YouTube Dislike
    { id = "ddkjiahejlhfcafbddmgiahcphecmpfh"; version = ""; sha256 = ""; } # uBlock Origin Lite
    { id = "khncfooichmfjbepaaaebmommgaepoid"; version = ""; sha256 = ""; } # Unhook - Remove YouTube Recommended & Shorts
    { id = "nffaoalbilbmmfgbnbgppjihopabppdk"; version = ""; sha256 = ""; } # Video Speed Controller
    { id = "jghecgabfgfdldnmbfkhmffcabddioke"; version = ""; sha256 = ""; } # Volume Master
  ];
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

    extensions = map (ext: {
      id = ext.id;
      version = ext.version;
      crxPath = fetchCrx { inherit (ext) id sha256; };
    }) extensionList;
  };

  # Optional: matches your terminal-homepage aesthetic on NTP / new tabs,
  # pairs with New Tab Redirect extension above if you point it here instead.
  # xdg.configFile."chromium-flags.conf".text = "";
}
