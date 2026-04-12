## nixos config

This is my current nixos config, it is still a work in progress.

## using the config

1. Clone repo into a desired folder
2. Change the ```hardware-configuration.nix``` file if needed
3. run the following command inside the root folder of the repository:
```
    $ sudo nixos-rebuild switch --flake . 
``` 