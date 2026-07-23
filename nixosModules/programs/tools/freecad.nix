{ pkgs, ... }:

{
	# This solution solved the crash, NOTE: fragile, on nixos update this needs to be changed again
	# https://discourse.nixos.org/t/gtk-file-dialog-causes-segfaults-glib-gio-error-settings-schema-org-gtk-settings-filechooser-does-not-contain-a-key-named-show-type-column/6853

	# does not work
	# https://discourse.nixos.org/t/setting-schema-filechooser-is-not-installed-on-some-programs/66091
	environment.extraInit = ''
	export XDG_DATA_DIRS="$XDG_DATA_DIRS:${pkgs.gtk3}/share/gsettings-schemas/${pkgs.gtk3.name}"
	'';

	environment.systemPackages = with pkgs; [ freecad ];
}