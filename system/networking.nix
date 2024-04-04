{ pkgs, ... }:

{
  networking.hostName = "nixos"; 
  networking.networkmanager.enable = true;
  programs.nm-applet.enable = true;
}
