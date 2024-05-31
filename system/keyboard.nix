{ pkgs, ... }:

{
  # Configure keymap in X11
  #services.xserver.xkb = {
  #  layout = "us";
  #  variant = "";
  #};

  services.xserver = {
    layout = "us";
    xkbVariant = "qwerty";
  };

  # Configure console keymap
  console.keyMap = "us";

  hardware.keyboard.qmk.enable = true;
}
