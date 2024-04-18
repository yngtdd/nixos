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
    #./swww.nix
    ./waybar.nix
    ./wofi.nix
    ./yazi/yazi.nix
    ./zoxide.nix
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
    fzf
    hyfetch
    lf
    micromamba
    nerdfonts
    nushell
    vim
    neovim
    obsidian
    obs-studio
    pamixer
    pavucontrol
    pciutils
    ripgrep
    rye
    starship
    signal-desktop
    shiori
    sops
    swww
    tree
    vlc
    vscodium
    wget
    wttrbar
    zig
    zsh
  ];

  fonts.fontconfig.enable = true;

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
