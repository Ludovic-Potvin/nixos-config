{ inputs, ... }:

{
  imports = [
    ./applications.nix
    ./noctalia.nix
    inputs.noctalia.homeModules.default
  ];

  home.username = "lpotvin";
  home.homeDirectory = "/home/lpotvin";

  home.stateVersion = "26.05";
}
