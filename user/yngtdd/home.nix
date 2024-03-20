{ config, pkgs, ... }:

{
  home.username = "yngtdd";
  home.homeDirectory = "/home/yngtdd";

  home.packages = with pkgs; [
    alacritty
    bat
    blender
    bottom
    direnv
    nix-direnv
    flameshot
    git
    helix
    hyfetch
    nushell
    neovim
    obs-studio
    ripgrep
    starship
    signal-desktop
    wget
  ];

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
