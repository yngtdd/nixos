{ pkgs,  ... }:

{
  fonts = {
    fontDir.enable = true;
    packages = with pkgs; [
      nerdfonts
      font-awesome
      google-fonts
    ];

    fontconfig = {
      defaultFonts = {
        monospace =  [ "Reddit Mono" ];
        sansSerif = [ "Fira Sans" ];
        serif = [ "Roboto Serif" ];
      };
    };
  };
}
