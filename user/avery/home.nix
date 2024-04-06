{ config, pkgs, ... }: let 

in {
  imports = [
    ./alacritty.nix
    ./direnv.nix
    ./firefox.nix
    ./fzf.nix
    ./git.nix
    ./gtk.nix
    ./helix.nix
    ./hyprpaper.nix
    ./starship.nix
    ./waybar.nix
    ./wofi.nix
    ./yazi/yazi.nix
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
    hyfetch
    lf
    nerdfonts
    nushell
    vim
    neovim
    obs-studio
    pamixer
    pavucontrol
    pciutils
    ripgrep
    rye
    starship
    signal-desktop
    shiori
    tree
    vlc
    wget
    zsh
  ];

  fonts.fontconfig.enable = true;

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
