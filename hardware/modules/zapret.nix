{

  services.zapret = {
    enable = true;
    params = [
      "--dpi-desync=fake,disorder2"
      "--dpi-desync-ttl=3"
      "--dpi-desync-autottl=3"

    ];
  };
}
