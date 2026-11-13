{ ... }:

{
  imports = [
    ./desktop.nix
  ];

  home.username = "lpotvin";
  home.homeDirectory = "/home/lpotvin";

  home.stateVersion = "26.05";
}
