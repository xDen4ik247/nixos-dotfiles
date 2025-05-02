{ pkgs, ... }:
{
  boot = {
    supportedFilesystems = [ "ntfs" ];
    # enable silent boot
    consoleLogLevel = 0; # disable systemd logs
    initrd.verbose = true;

    kernelParams = [
      "quiet"
      "splash"
      "boot.shell_on_fail"
      "loglevel=3"
      "rd.systemd.show_status=false"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
    ];

    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        device = "nodev";
        enable = true;
        efiSupport = true;
        useOSProber = true;
      };
    };
  };
}
