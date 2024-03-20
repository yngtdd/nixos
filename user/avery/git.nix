{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "yngtdd";
    userEmail = "yngtdd@gmail.com";
    aliases = {
      st = "status";
      undo = "reset HEAD~1 --mixed";
      amend = "commit -a --amend";
    };
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
