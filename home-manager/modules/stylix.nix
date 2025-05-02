{ pkgs, ... }:
{
  stylix = {
    enable = true;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
    targets = {
      kitty.enable = true;
      btop.enable = true;
      yazi.enable = true;
      hyprland.enable = true;
      cava.enable = true;
      cava.rainbow.enable = true;
      vesktop.enable = true;
      librewolf.profileNames = [ "gemakfy" ];

      dunst.enable = false;
      waybar.enable = false;
      rofi.enable = false;
    };
    iconTheme = {
      enable = true;
      package = pkgs.tela-icon-theme;
      dark = "Tela-dark";
    };

    cursor = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };
  };
}
