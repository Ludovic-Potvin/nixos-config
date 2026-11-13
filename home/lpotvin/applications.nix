{ pkgs, ... }:

{
  # Cursor
  home.pointerCursor = {
    enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
    size = 16;
    gtk.enable = true;
  };
  gtk.enable = true;

  # Hyprland
  xdg.configFile."hypr".source = ./hyprland/hypr;

  # Tmux
  home.file.".tmux.conf".source = ./tmux/tmux.conf;

  # Fish
  xdg.configFile."fish/config.fish".source = ./fish/config.fish;

  # Noctalia
  xdg.configFile."noctalia/config.toml".source = ./noctalia/config.toml;

  # Kitty
  xdg.configFile."kitty".source = ./kitty;

  # Wallpaper
  home.file."Pictures/Wallpapers/valley.png".source = ./wallpaper/valley.png;
  home.file."Pictures/Wallpapers/forest_castle.png".source = ./wallpaper/forest_castle.png;

  # Nvim
  xdg.configFile."nvim".source = ./nvim;
}
