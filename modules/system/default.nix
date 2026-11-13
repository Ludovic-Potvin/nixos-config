{
  imports = [
    ./boot.nix
    ./networking.nix
    ./locale.nix
    ./users.nix
  ];

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}
