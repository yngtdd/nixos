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
      core = {
        editor = "hx";
        pager = "delta";
        whitespace = "trailing-space,space-before-tab";
      };
      merge.conflictstyle = "diff3";
      diff.colorMoved = "default";
      delta = {
        features = "wooly-mammoth";
        navigate = true;
        side-by-side = true;
        hyperlinks = true;
      };
    };
  };
}
