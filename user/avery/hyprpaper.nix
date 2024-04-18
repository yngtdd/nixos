{ pkgs, config, ... }:

{
  home.packages = with pkgs; [ hyprpaper ];

  # 76 - kiki
  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ~/nixos/wallpaper/63.jpg
    wallpaper = HDMI-A-1,~/nixos/wallpaper/63.jpg
    splash=false
  '';
}
