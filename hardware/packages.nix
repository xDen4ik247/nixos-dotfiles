{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    #Desktop apps
    anydesk
    librewolf
    #Minecraft
    # gamemode
    prismlauncher
    ayugram-desktop
    vesktop
    spotify
    obs-studio
    chromium
    vlc
    qemu # virtualization
    quickemu
    recaf-launcher
    zulu23 # java
    #python
    python313
    python313Packages.flake8
    zed-editor

    # cli utils
    vim
    #neovim
    zsh
    oh-my-zsh
    fastfetch
    btop
    unzip
    zip
    unrar
    git
    yazi
    zoxide # modern "cd"
    eza # modern "ls"
    fzf
    zathura # vim-like pdf reader
    playerctl
    firejail # namespace-based sandboxing
    protonup # for steam
    flatpak
    docker

    #IP utils
    zapret
    dnscrypt-proxy2
    nftables
    ipset
    #Test domain
    whois
    mtr
    dig
    traceroute
    dig

    amnezia-vpn

    home-manager

    # lib
    xwayland
    egl-wayland
    xdg-desktop-portal-hyprland
    bibata-cursors
    catppuccin
    dracula-theme
    gtk4

    # for sddm
    sddm-astronaut
    libsForQt5.qt5.qtsvg
    libsForQt5.qt5.qtquickcontrols2
    libsForQt5.qt5.qtgraphicaleffects
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    nerd-fonts.hack
  ];
}
