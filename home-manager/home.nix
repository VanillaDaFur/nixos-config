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
      eza
    ];

    # Don't change without big need.
    stateVersion = "25.05";
  };
  
  # Import modules
  imports = [
    ./modules/zsh.nix
    ./modules/gtk-and-qt.nix
    ./modules/nixvim.nix
    ./modules/zen-browser.nix
    ./modules/git.nix
  ];
}
