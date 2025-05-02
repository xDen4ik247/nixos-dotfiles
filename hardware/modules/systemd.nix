{ pkgs, ... }:
{
  #journald minimize logs
  services.journald.extraConfig = "SystemMaxUse=50M\nSystemMaxFiles=5";
  services.journald.rateLimitBurst = 500;
  services.journald.rateLimitInterval = "30s";

  #amnezia vpn
  systemd.services.Amnezia = {
    enable = true;
    description = "AmneziaVPN service";
    serviceConfig = {
      ExecStart = "${pkgs.amnezia-vpn}/bin/AmneziaVPN-service";
    };
    wantedBy = [ "default.target" ];
  };

  #boot.loader = {
  # 	systemd-boot.enable = true;
  # 	efi.canTouchEfiVariables = true;
  #};

}

