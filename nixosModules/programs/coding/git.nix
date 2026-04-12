{ pkgs, ... }:

{
	programs.git.enable = true;
	
	#possibly may not work, has to be inspected
	
	programs.git.config.user.name = "SenneDrent";
	programs.git.config.user.email = "sennedrent@gmail.com";
	
	#programs.git.config.user.name = "Sdrent";
	#programs.git.config.user.email = "s.drent@student.tudelft.com";
}
