{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    dotDir = ".config/zsh";
    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
    };

    shellAliases = {
      fzf = "fzf --preview 'bat --color=always {}'";
      hzf = "hx $(fzf)";
      ll = "ls -l";
      update = "sudo nixos-rebuild switch --flake";
    };
  };
}
