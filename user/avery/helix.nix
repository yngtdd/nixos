{ config, pkgs, theme, ... }:

{
  home.sessionVariables.EDITOR = "hx";

  programs.helix = {
    enable = true;
    settings = {
      theme = "onedark";
      editor = {
        true-color = true;
        line-number = "relative";
        mouse = false;
        cursor-shape.insert = "bar";
        cursor-shape.normal = "underline";
        color-modes = true;
        cursorline = true;
        auto-save = true;
        indent-guides.render = true;
        lsp.display-messages = false;
      };
      keys.normal = {
        space.space = "file_picker";
        space.w = ":w";
        space.q = ":q";
        esc = [ "collapse_selection" "keep_primary_selection" ];
      };
    };
    languages = {
      debugger ={
        command = "lldb-vscode";
        name = "lldb-vscode";
        transport = "stdio";
        templates = {
          name = "binary";
          request = "launch";
        };
      };
      language = [
        {
          name = "rust";
          auto-format = false;
        }
      ];
    };
  };
}	
