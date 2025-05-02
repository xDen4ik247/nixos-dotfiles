{ config, pkgs, lib,  ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./packages.nix
      ./wayland-packages.nix
      ./modules/nvidia.nix
      ./modules/user.nix
      ./modules/locales.nix
      ./modules/collect-garbage.nix
      ./modules/pipewire.nix
      ./modules/systemd.nix
      ./modules/sddm/sddm.nix
      ./modules/bootloader.nix
      ./modules/zram.nix

      #./modules/zapret.nix
      ./modules/dns-crypt.nix
    ];

  boot = {
    kernelPackages = pkgs.linuxPackages_xanmod_latest;
    consoleLogLevel = 0;
  };

  environment.sessionVariables = {
    MOZ_ENABLE_WAYLAND = "1";
    NIXOS_OZONE_WL = "1";
    WLR_NO_HARDWARE_CURSORS = "1";
    EDITOR = "nvim";
  };

  networking = {
    hostName = "nixos"; # Define your hostname.
    networkmanager.enable = true; # enable networking
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  programs = {
    hyprland.xwayland.enable = true;
    hyprland.enable = true; # enable hyprland
    zsh.enable = true;
    gamemode.enable = true;
  };

  system.stateVersion = "24.11"; # Did you read the comment?

}
