{ pkgs, ... }:

{
	  environment.systemPackages = with pkgs; 
	  let
	    vcsodeWithExtension = vscode-with-extensions.override {
	      # When the extension is already available in the default extensions set.
	      vscodeExtensions = with vscode-extensions; [
		      bbenoist.nix
		      #platformio.platformio-vscode-ide
	      ];
	    };
	  in
	  [
	  	vcsodeWithExtension
	  ];
}
