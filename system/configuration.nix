{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  networking.hostName = "nixos"; 
  networking.networkmanager.enable = true;
  programs.nm-applet.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "jp";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "jp106";

  # Enable CUPS to print documents.
  services.printing.enable = true;
  
  nixpkgs.config.allowUnfree = true;

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = false;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
  
  nixpkgs.config.permittedInsecurePackages = [
    "electron-19.1.9"
  ];

  # $ nix search wget
  environment.systemPackages = with pkgs; [
    gnomeExtensions.hue-lights
    teams-for-linux
    wget
    zsh
  ];  

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 15d";
  };

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  
  system.stateVersion = "23.11"; 

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
