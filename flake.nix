{
  description = "Avery`s System Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    musnix  = { url = "github:musnix/musnix"; };
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          inputs.musnix.nixosModules.musnix
          ./system/bootloader.nix
          ./system/fonts.nix
          ./system/gc.nix
          ./system/gnome.nix
          ./system/hyprland.nix
          ./system/networking.nix
          ./system/nvidia.nix
          ./system/printing.nix
          ./system/sound.nix
          ./system/time.nix
          ./system/users.nix
          ./system/configuration.nix

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.avery = import ./user/avery/home.nix;
            home-manager.users.yngtdd = import ./user/yngtdd/home.nix;
          }
        ];
        specialArgs = { inherit inputs; };
      };
    };
  };
}
