{ pkgs, osConfig, ... }:

{
  programs.lutris = {
    enable = true;

    protonPackages = [ 
      pkgs.proton-ge-bin 
    ];

    winePackages = [ 
      pkgs.wineWowPackages.stable
    ];
  };
}
