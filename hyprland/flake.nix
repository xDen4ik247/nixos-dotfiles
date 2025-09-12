{
  description = "NIX flake config";


  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    stylix.url = "github:danth/stylix"; #theme framework on Nixos

    milk-grub-theme.url = "github:gemakfy/MilkGrub";

  };

  outputs = { nixpkgs, home-manager, stylix, ... }@inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        inputs.milk-grub-theme.nixosModule
        ./hardware/configuration.nix
        # inputs.zapret.nixosModule
      ];
    };

    homeConfigurations.ziggyss = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
      modules = [
        inputs.nixvim.homeManagerModules.nixvim
        stylix.homeModules.stylix
        ./home.nix
      ];
    };
  };
}
