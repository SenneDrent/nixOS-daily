{ pkgs, lib, inputs, ... }:

{
	imports = [
		./programs/coding/git.nix
		./programs/coding/vscode.nix
		./programs/tools/freecad.nix
		./programs/recreational/discord.nix
		./programs/recreational/spotify.nix
		./programs/recreational/steam.nix
		./programs/zen.nix
	];
}

