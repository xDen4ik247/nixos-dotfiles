{ config, pkgs, lib, ... }:

let
  rtl8852buPatched = pkgs.rtl8852bu.overrideAttrs (old: rec {
    postPatch = (old.postPatch or "") + ''
      grep -R -l "from_timer" . >/tmp/_fm || true
      if [ -s /tmp/_fm ]; then
        while IFS= read -r f; do
          sed -i 's/from_timer/timer_container_of/g' "$f" || true
        done </tmp/_fm
      fi
    '';
  });
in
{
  boot.kernelModules = [ "8852bu" ];
  boot.extraModulePackages = [ rtl8852buPatched ];

  environment.systemPackages = [ pkgs.usb-modeswitch ];

  services.udev.extraRules = ''
    ACTION=="add", SUBSYSTEM=="usb", ATTR{idVendor}=="0bda", ATTR{idProduct}=="1a2b", \
      RUN+="${lib.getExe pkgs.usb-modeswitch} -K -v 0bda -p 1a2b"
  '';
}
