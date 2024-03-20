{ config, pkgs, ... }: let 

in {
  imports = [
    #./zsh.nix
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

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    dotDir = ".config/zsh";
    #history.size = 10000;
    #history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };

    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch";
    };
  };

  home.stateVersion = "24.05";
  programs.home-manager.enable = true;
}
