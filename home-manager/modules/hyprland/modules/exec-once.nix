{
  wayland.windowManager.hyprland.settings.exec-once = [
    "AmneziaVPN"
    "waypaper --restore"
    "waybar"
    "wl-paste --type text --watch cliphist store"
    "wl-paste --type image --watch cliphist store"
    #"cliphist wipe"
    "[workspace 3 silent] vesktop --enable-features=UseOzonePlatform --ozone-platform=wayland"
    "[workspace 4 silent] librewolf"
    "[workspace 5 silent] spotify"
  ];
}
