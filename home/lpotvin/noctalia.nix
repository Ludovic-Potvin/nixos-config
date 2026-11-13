{ ... }:

{
  xdg.configFile."noctalia".source = ./noctalia;

  programs.noctalia = {
    enable = true;

    settings = {
    };

    systemd.enable = false;
  };
}

