{ config, pkgs, ... }: {
	home = {
		username = "gemakfy";
		homeDirectory = "/home/gemakfy";
		stateVersion = "25.05";
	};

	imports = [
    ./home-manager/modules/default.nix
    #./home-manager/modules/hyprpaper.nix
    ./home-manager/nixvim/nixvim.nix
	];
}
