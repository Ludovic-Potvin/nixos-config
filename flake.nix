{
  description = "Lpotvin NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      # This make sure the nixpkgs revision is the same as the nixos revision
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }: {
    nixosConfigurations = {
      spidermonkey = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./hosts/spidermonkey
	  home-manager.nixosModules.home-manager
        ];
      };
    };
  };
}

