{ ... }:

{
  # Hyprland
  xdg.configFile."hypr".source = ./hyprland/hypr;

  # Tmux
  home.file.".tmux.conf".source = ./tmux/tmux.conf;

  # Fish
  xdg.configFile."fish/config.fish".source =
    ./fish/config.fish;

  # Noctalia
  xdg.configFile."noctalia/config.toml".source =
    ./noctalia/config.toml;

  # Alacritty
  xdg.configFile."kitty".source = ./kitty;

  # Wallpaper
  home.file."Pictures/Wallpapers/valley.png".source =
    ./wallpaper/valley.png;
}
