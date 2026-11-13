{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    wofi
    alacritty
    kitty
    gh
    tmux
    nix-output-monitor
    zoxide
    tree
  ];

  programs.git.enable = true;
  programs.firefox.enable = true;
  programs.fish.enable = true;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
