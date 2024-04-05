{ config, pkgs, ... }: let 

in {
  imports = [
    ./alacritty.nix
    ./direnv.nix
    ./fzf.nix
    ./git.nix
    ./gtk.nix
    ./helix.nix
    ./hyprpaper.nix
    ./starship.nix
    ./waybar.nix
    ./zsh.nix
  ];

  home.username = "avery";
  home.homeDirectory = "/home/avery";

  home.packages = with pkgs; [
    ani-cli
    anki-bin
    avahi
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
    rofi-wayland
    rye
    starship
    signal-desktop
    shiori
    tree
    vlc
    wofi
    wget
    zsh
  ];

  fonts.fontconfig.enable = true;

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
