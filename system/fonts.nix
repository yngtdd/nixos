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
        monospace =  [ "Fira Code" ];
        sansSerif = [ "Fira Sans" ];
        serif = [ "Roboto Serif" ];
      };
    };
  };
}
