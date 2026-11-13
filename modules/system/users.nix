{ pkgs, ... }:

{
  users.users.lpotvin = {
    isNormalUser = true;
    shell = pkgs.fish;

    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };
}
