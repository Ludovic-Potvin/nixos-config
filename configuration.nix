{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;

  # Enable networking
  # networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/New_York";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."lpotvin" = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # Allow unfree packages
  # nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile.
  environment.systemPackages = with pkgs; [
    vim
    wget
    wofi
    kitty
    gh
    tmux
  ];

  # === LUDO SECTION
  # Programs
  programs.hyprland.enable = true;
  programs.git.enable = true;
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;
  programs.firefox.enable = true;
  # Services
  # services.displayManager.noctalia-greeter.enable = true;
  # === LUDO SECTION END

  # networking.firewall.enable = true;
}
