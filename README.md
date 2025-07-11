## Setting up the config from the git repository
1. clone the repo into the desired folder
2. symlink this folder to /etc/nixos with: 
```
    environment.etc.nixos.source = "[YOUR_PATH]/nixOS-daily/";
```
3. build once in this directory:
```
 $ sudo nixos-rebuild switch -I nixos-config=[YOUR_PATH]/nixOS-daily/configuration.nix
```
4. enjoy!
