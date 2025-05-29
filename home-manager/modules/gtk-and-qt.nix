{ pkgs, ... }: {
  gtk = {
    enable = true;

    cursorTheme = {
      package = pkgs.bibata-cursors;
      name    = "Bibata-Modern-Ice";
    };
    
    iconTheme = {
      package = pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "mauve";
      };
      name = "Papirus-Dark";
    };

    theme = {
      package = pkgs.callPackage ./pkgs/catppuccin-gtk/catppuccin-gtk.nix {
        accents = [ "mauve"];
        variant = "mocha";
        tweaks = [ "rimless" "normal" ];
      };
      name = "catppuccin-mocha-mauve-standard+rimless,normal";
    };

    font = {
      name = "Readex Pro";
      size = 11;
    };
  };

  qt = {
    enable = true;
    style.package = with pkgs; [
      darkly-qt5
      darkly
    ];
    platformTheme.name = "qtct";
  };
  home.file = {
    ".local/share/icons/Papirus".source =
     "${pkgs.catppuccin-papirus-folders}/share/icons/Papirus";
    ".local/share/fonts/truetype".source =
     "${pkgs.google-fonts}/share/fonts/truetype";
  };
}
