{ config, ... }:

{

  # DRIVERS
  hardware.graphics.enable = true; # enable opengl
  hardware.nvidia = {
    modesetting.enable = true;
    open = false;
    nvidiaSettings = true;

    package = config.boot.kernelPackages.nvidiaPackages.latest;
  };

  #services.xserver.videoDrivers = [ "nvidia" "options" "nvidia_drm" "modeset" "fbdev" ];
  services.xserver.videoDrivers = [ "nvidia" ]; 

}
