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
            rev = "9bb508ae1486b46466aaa4a72df8fbd9f240db66";
            hash = "sha256-zX0xl3CNVWRQB0CZi/PtIm68mDe/z0nGj2x68B1Z7/A=";
          };
          installPhase = "cp -r . $out";
        };
        splashImage = "${config.boot.loader.grub.theme}/assets/background.jpg";
      };
    };
  };
}
