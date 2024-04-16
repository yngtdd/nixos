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
      rebuild = "sudo nixos-rebuild switch --flake /home/avery/nixos/";
    };
  };

  home.file.".zshrc" = {
  text = ''
    # Enable zoxide
    eval "$(zoxide init zsh)"

    # Enable Direnv
    export DIRENV_LOG_FORMAT="$(printf "\033[2mdirenv: %%s\033[0m")"
    eval "$(direnv hook zsh)"
    _direnv_hook() {
      eval "$(direnv export zsh 2> >(egrep -v -e '^....direnv: export' >&2))"
    };
  '';
  };
}
