{ pkgs, ... }:

{
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "jp";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "jp106";

  hardware.keyboard.qmk.enable = true;
}
