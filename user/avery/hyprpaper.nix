{ pkgs, config, ... }:

{
  home.packages = with pkgs; [ hyprpaper ];

  # 76 - kiki
  xdg.configFile."hypr/hyprpaper.conf".text = ''
    preload = ~/nixos/wallpaper/94.jpg
    wallpaper = HDMI-A-1,~/nixos/wallpaper/94.jpg
    splash=false
  '';
}
