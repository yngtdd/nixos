{ pkgs,  ... }:

{
  boot = {
    consoleLogLevel = 0;
    initrd = {
      verbose = false;
    };
    loader = {
      grub = {
        enable = true;
        device = "/dev/nvme0n1";
        useOSProber = true;
      };
    };
  };
}
