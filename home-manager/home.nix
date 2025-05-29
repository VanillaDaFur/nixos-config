{ config, pkgs, ... }: {
  home = {
    # Important
    username      = "Vanilla";
    homeDirectory = "/home/Vanilla";
    
    # Packages
    packages = with pkgs; [
      git
      nemo
      file-roller
      vesktop
      firefox
      swappy
      qbittorrent 
      oh-my-posh
    ];

    # Don't change without big need.
    stateVersion = "25.05";
  };
  
  # Import modules
  imports = [
    ./modules/modules.nix
  ];
}
