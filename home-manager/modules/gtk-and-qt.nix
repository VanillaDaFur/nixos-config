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
      name = "catppuccin-mocha-mauve-standard+rimless,normal";
    };

    font = {
      name = "Readex Pro";
      size = 11;
    };
  };

  qt = {
    style.package = with pkgs; [
      darkly-qt5
      darkly
    ];
    platformTheme.name = "qtct";
  };
  home.file = {
    ".local/share/icons/Papirus".source =
     "${pkgs.catppuccin-papirus-folders}/share/icons/Papirus";
  };
}
