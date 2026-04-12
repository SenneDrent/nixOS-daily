{ pkgs, lib, inputs, ... }:

{
	imports = [
		./programs/coding/git.nix
		./programs/coding/vscode.nix
		./programs/zen.nix
	];
}

