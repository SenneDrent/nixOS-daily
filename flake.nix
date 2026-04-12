{
  description = "daily desktop nixos config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { nixpkgs, ... } @inputs: {
	
	nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
		modules = [
			./hosts/daily-laptop/configuration.nix
			./nixosModules/default.nix
		];
	};
  };
}
