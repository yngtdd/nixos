{ config, pkgs, ... }: let 

in {
  imports = [
    ./direnv.nix
    ./fzf.nix
    ./git.nix
#    ./gtk.nix
    ./helix.nix
    ./starship.nix
    ./zsh.nix
  ];

  home.username = "avery";
  home.homeDirectory = "/home/avery";

  home.packages = with pkgs; [
    alacritty
    ani-cli
    anki-bin
    bat
    blender
    bottom
    cachix
    catppuccin-gtk
    delta
    dunst
    dust
    flameshot
    firefox
    fzf
    halloy
    hyfetch
    lf
    nerdfonts
    nushell
    vim
    neovim
    obs-studio
    pciutils
    ripgrep
    rye
    starship
    signal-desktop
    shiori
    vlc
    wget
    zsh
  ];

  fonts.fontconfig.enable = true;

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
