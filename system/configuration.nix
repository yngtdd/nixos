{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  networking.hostName = "nixos"; 
  networking.networkmanager.enable = true;
  programs.nm-applet.enable = true;

  time.timeZone = "America/New_York";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "jp";
    variant = "";
  };

  # Configure console keymap
  console.keyMap = "jp106";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  users.users.avery = {
    isNormalUser = true;
    initialPassword = "password";
    description = "Avery Young";
    extraGroups = [ 
      "audio"
      "networkmanager"
      "wheel"
      "video"
    ];
  };

  users.users.yngtdd = {
    isNormalUser = true;
    description = "Todd Young";
    initialPassword = "password";
    extraGroups = [ "networkmanager" "wheel" ];
  };
  
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

  #fonts = {
  #  fontDir.enable = true;
  #  packages = with pkgs; [
  #    nerdfonts
  #    font-awesome
  #    google-fonts
  #  ];

  # fontconfig = {
  #   defaultFonts = {
  #      monospace =  [ "Fira Code" ];
  #      sansSerif = [ "Fira Sans" ];
  #      serif = [ "Roboto Serif" ];
  #    };
  # };
  #};
 

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
