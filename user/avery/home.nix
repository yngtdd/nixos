{ config, lib, pkgs, ... }: let 

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
    ardour
    audacity
    avahi
    azure-cli
    azure-functions-core-tools
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
    hyprshot
    lf
    micromamba
    nerdfonts
    nushell
    vim
    neovim
    obsidian
    obs-studio
    opentofu
    pamixer
    pavucontrol
    pciutils
    qjackctl
    ripgrep
    rye
    starship
    signal-desktop
    shiori
    sonic-visualiser
    sops
    swww
    tree
    vlc
    ventoy-full
    vscodium
    wget
    wttrbar
    zig
    zsh
    zoom-us
  ];

  fonts.fontconfig.enable = true;

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
