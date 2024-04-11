{ pkgs,  ... }:

{
  boot.consoleLogLevel = 0;

  boot.initrd = {
    verbose = false;
  };

  boot.loader = {
    grub = {
      enable = true;
      device = "/dev/nvme0n1";
      useOSProber = true;
    };
  };
}
