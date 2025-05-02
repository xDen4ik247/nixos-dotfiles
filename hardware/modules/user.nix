{ pkgs, ... }: {

  users.defaultUserShell = pkgs.zsh;

  users.users.gemakfy = {
    isNormalUser = true;
    description = "gemakfy";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
    #shell = pkgs.zsh;
  };
}
