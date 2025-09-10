{ pkgs, ... }: {

  #users.defaultUserShell = pkgs.zsh;

  users.users.ziggyss = {
    isNormalUser = true;
    description = "ZiggySS";
    extraGroups = [ "networkmanager" "wheel" "gamemode" ];
    packages = with pkgs; [];
    shell = pkgs.zsh;
  };

  users.users.test = {
    isNormalUser = true;
    description = "user for tests";
    home = "/home/test";
    extraGroups = [ ];
    shell = pkgs.bash;
    createHome = true;
    homeMode= "0700";
  };
}
