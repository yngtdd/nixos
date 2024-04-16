{ config, pkgs, ... }:

{
  programs.zoxide = {
    enable = true;
  };

  home.file."zshrc" = {
  text = ''
    # Enable zoxide
    eval "$(zoxide init zsh)"
  '';
  };
}
