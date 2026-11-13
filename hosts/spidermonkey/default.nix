{ inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/system
    ../../modules/desktop
    ../../modules/programs
  ];

  networking.hostName = "spidermonkey";
  system.stateVersion = "26.05";

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    backupFileExtension = "backup";

    extraSpecialArgs = {
      inherit inputs;
    };

    users.lpotvin = import ../../home/lpotvin;
  };
}
