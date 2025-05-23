{ config, pkgs, ... }:

{
  home = {
    username      = "Vanilla";
    homeDirectory = "/home/Vanilla";

    packages = with pkgs; [
      git
      nemo
      file-roller
      firefox
      kitty
      rofi-wayland
      xdg-user-dirs
      nodejs
      oh-my-posh
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ];
 
    sessionVariables = {
      EDITOR = "nvim"; 
    };

    # Don't change without big need.
    stateVersion = "24.11";
  };
  fonts.fontconfig.enable = true;
  
  # Import modules
  imports = [
    ./modules/zsh.nix
  ];
}
