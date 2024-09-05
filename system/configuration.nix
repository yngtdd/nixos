{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  environment.sessionVariables = {
    FLAKE = "/home/avery/nixos";
  };

  nixpkgs.config.allowUnfree = true;
  

  environment.systemPackages = with pkgs; [
    gnomeExtensions.hue-lights
    nh
    teams-for-linux
    steam
    steam-run
    zsh
  ];  

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  
  system.stateVersion = "23.11"; 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
