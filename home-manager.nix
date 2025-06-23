{ config, pkgs, ... }:
let
  home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];

  home-manager.users.senne = {
    home.stateVersion = "18.09";
    dconf = {
    	enable = true;
    	#enable right clicking with right side of touchpad
    	settings."org/gnome/desktop/peripherals/touchpad" = {
		click-method = "areas";
	};
    };
    
    programs.git = {
  	enable = true;
  	userName = "SenneDrent";
  	userEmail = "sennedrent@gmail.com";
  	extraConfig = {
        	init.defaultBranch = "main";
        	safe.directory = "/etc/nixos";
      	};
    };
    /* Here goes the rest of your home-manager config, e.g. home.packages = [ pkgs.foo ]; */
  };
}
