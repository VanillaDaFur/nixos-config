{
  description = "My very first, very basic flake! :3";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
    catppuccin.url = "github:catppuccin/nix";
    nixvim = {
      url = "github:nix-community/nixvim/nixos-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
		zen-browser = {
		  url = "github:0xc000022070/zen-browser-flake";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
	  # Just to move nixos config here, yet.
    nixosConfigurations.NixOS = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [
				./nixos/configuration.nix
			];
		};
    
		# Enable nixvim,zen-browser for home-manager
    homeConfigurations.Vanilla = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
      modules = [ 
        ./home-manager/home.nix
				inputs.nixvim.homeManagerModules.nixvim
				inputs.zen-browser.homeModules.twilight-official
      ];
    };
  };
}
