{
  services = {
    gvfs.enable    = true;
    flatpak.enable = true;
    pipewire = {
      enable       = true;
      pulse.enable = true;
      alsa.enable  = true;
    };
  };
}
