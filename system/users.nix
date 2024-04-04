{ pkgs, ... }:

{
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
 }
