{ config, pkgs, ... }: let 

in {
  imports = [
    ./zsh.nix
    ./direnv.nix
    ./helix.nix
    ./git.nix
  ];

  home.username = "avery";
  home.homeDirectory = "/home/avery";

  home.packages = with pkgs; [
    alacritty
    anki-bin
    bat
    blender
    bottom
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
    ripgrep
    rye
    starship
    signal-desktop
    shiori
    wget
    zsh
  ];

  fonts.fontconfig.enable = true;

  programs.fzf = {
    enable = true;
  };

  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      line_break.disabled = true;
    };
  };

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
