{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    vim
    wget
    wofi
    kitty
    gh
    tmux
    zoxide
    tree
    claude-code
    ripgrep
    gcc
    fastfetch
  ];

  programs.git.enable = true;
  programs.firefox.enable = true;
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set -U fish_greeting
    '';
  };

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
