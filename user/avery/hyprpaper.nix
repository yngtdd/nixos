{ pkgs, config, ... }:

{
  home.packages = with pkgs; [ hyprpaper ];

  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ~/nixos/wallpaper/76.jpg
    wallpaper = HDMI-A-1,~/nixos/wallpaper/76.jpg
    splash=false
  '';
}
