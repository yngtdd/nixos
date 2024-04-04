{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  environment.systemPackages = with pkgs; [
    gnomeExtensions.hue-lights
    teams-for-linux
    zsh
  ];  

  #programs.zsh.enable = true;
  #users.defaultUserShell = pkgs.zsh;
  
  system.stateVersion = "23.11"; 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
