{ config, pkgs, ... }:

{
    dconf = {
        enable = true;
        #enable right clicking with right side of touchpad
        settings = {
            "org/gnome/desktop/peripherals/touchpad" = {
                click-method = "areas";
            };

            "org/gnome/shell" = {
                favorite-apps = [
                    "zen.desktop"
                    "org.gnome.Nautilus.desktop"
                    "org.gnome.Console.desktop"
                ];
            };
            
            "org/gnome/desktop/background" = {
                color-shading-type = "solid";
                picture-uri = "file://" + ./../../static/doodle_bg.png;
                picture-uri-dark = "file://" + ./../../static/doodle_bg.png;
            };
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

    # set default apps
    xdg.mimeApps = {
        enable = true;  
        defaultApplications = {
            "text/html" = "zen.desktop";
            "x-scheme-handler/http" = "zen.desktop";
            "x-scheme-handler/https" = "zen.desktop";
            "x-scheme-handler/about" = "zen.desktop";
            "x-scheme-handler/unknown" = "zen.desktop";
            "application/pdf" = "zen.desktop";
        };
    };
    
    home.stateVersion = "25.05";
}