{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    #Hyprland
    dunst
    pipewire
    pulseaudio
    pamixer # pulseaudio cli mixer
    alsa-utils
    wireplumber
    hyprpolkitagent
    waybar
    swww
    mpvpaper
    rofi-wayland # launcher
    rofi-emoji
    cliphist # clipboard
    wl-clipboard

    kitty
    grim
    slurp
    grimblast
    waypaper
    hyprland
    hyprcursor
    cava
    nautilus
  ];
}
