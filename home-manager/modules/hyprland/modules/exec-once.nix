{
  wayland.windowManager.hyprland.settings.exec-once = [
    "AmneziaVPN"
    "waypaper --restore"
    #"hyprcursor"
    "waybar"
    "wl-paste --type text --watch cliphist store"
    "wl-paste --type image --watch cliphist store"
    "cliphist wipe"
    #"hyprctl setcursor Bibata-Modern-Classic 24"
    "[workspace 3 silent] vesktop --enable-features=UseOzonePlatform --ozone-platform=wayland"
    "[workspace 4 silent] librewolf"
    #"[workspace 5 silent] telegram-desktop"
  ];
}
