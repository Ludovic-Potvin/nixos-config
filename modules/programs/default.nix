{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    wofi
    kitty
    gh
    tmux
  ];

  programs.git.enable = true;
  programs.firefox.enable = true;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
