{ ... }:

{
  imports = [
    ./desktop.nix
    ./tmux.nix
  ];

  home.username = "lpotvin";
  home.homeDirectory = "/home/lpotvin";

  home.stateVersion = "26.05";
}
