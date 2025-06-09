{ pkgs, config, ... }:
{
  boot = {
    supportedFilesystems = [ "ntfs" ];
    # enable silent boot
    consoleLogLevel = 0; # disable systemd logs
    initrd.verbose = false;

    kernelParams = [
      "quiet"
      "splash"
      "loglevel=3"
      "udev.log_level=3"
      "rd.udev.log_level=3"
    ];

    loader = {
      efi.canTouchEfiVariables = true;

      grub = {
        device = "nodev";
        enable = true;
        efiSupport = true;
        useOSProber = true;
        gfxmodeEfi = "2560x1440";
        gfxpayloadEfi = "keep";

        theme = pkgs.stdenv.mkDerivation {
          pname = "MilkGrub";
          version = "1.0";
          src = pkgs.fetchFromGitHub {
            owner = "gemakfy";
            repo = "MilkGrub";
            rev = "58df606df41f422fed87c9e7b621f2a5e2cd94f9";
            hash = "sha256-9t0H72qE5q5Jl41c7TCEA8VIgyrxrE/q9fTPXvOOWVU=";
          };
          installPhase = "cp -r . $out";
        };
        splashImage = "${config.boot.loader.grub.theme}/assets/background.jpg";
      };
    };
  };
}
