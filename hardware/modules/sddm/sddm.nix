{ pkgs, ... }:
{
  services = {
    displayManager = {
      defaultSession = "hyprland";
      autoLogin.enable = true;
      autoLogin.user = "gemakfy";
      sddm = {
        enable = true;
        wayland.enable = true;
        theme = "${import ./flower-theme.nix { inherit pkgs;  }}";
      };
    };
  };
}
