{ config, pkgs, ... }:

{
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

    # set default apps
    xdg.mimeApps = {
        enable = true;  
        defaultApplications = {
            "text/html" = "zen-browser.desktop";
            "x-scheme-handler/http" = "zen-browser.desktop";
            "x-scheme-handler/https" = "zen-browser.desktop";
            "x-scheme-handler/about" = "zen-browser.desktop";
            "x-scheme-handler/unknown" = "zen-browser.desktop";
            "application/pdf" = "zen-browser.desktop";
        };
    };
    
    home.stateVersion = "25.05";
}