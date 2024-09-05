{
  description = "Avery`s System Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    musnix.url = "github:musnix/musnix";
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ self, nixpkgs, musnix, rust-overlay, home-manager, ... }: {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          musnix.nixosModules.musnix
          ./system/bootloader.nix
          ./system/configuration.nix
          ./system/fonts.nix
          ./system/gc.nix
          ./system/gnome.nix
          ./system/hyprland.nix
          ./system/networking.nix
          #./system/nh.nix
          ./system/nvidia.nix
          ./system/printing.nix
          ./system/sound.nix
          ./system/time.nix
          ./system/users.nix

          ({ pkgs, ... }: {
            nixpkgs.overlays = [ rust-overlay.overlays.default ];
            environment.systemPackages = [ pkgs.rust-bin.stable.latest.default ];
          })

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
