{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    #Hyprland
    dunst
    pipewire
    pamixer # pulseaudio cli mixer
    alsa-utils
    wireplumber
    hyprpolkitagent
    waybar
    swww

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
