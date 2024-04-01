{ config, pkgs, ... }:

{
  programs.halloy = {
    enable = true;
#    theme = "ferra";
#    servers.liberachat = {
#      nickname = "averyavery";
#      server = "irc.libera.chat";
#      channels = [
#        "#halloy"
#      ];
#    };

    #buffer.channel.topic = {
    #  enabled = true;
    #};
  };
}
