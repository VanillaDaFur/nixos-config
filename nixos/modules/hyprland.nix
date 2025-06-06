{ pkgs, ...}: {

  programs = {
    hyprland.enable = true;
    hyprlock.enable = true;
  };

  services = {
    hypridle.enable = true;
  };
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
  };
}
