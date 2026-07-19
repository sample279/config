{ pkgs, ... }:

{
  home.file.".local/share/thumbnailers/ffmpegthumbnailer.thumbnailer".source =
    "${pkgs.ffmpegthumbnailer}/share/thumbnailers/ffmpegthumbnailer.thumbnailer";
}
