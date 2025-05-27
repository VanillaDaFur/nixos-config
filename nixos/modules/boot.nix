{ lib, pkgs, ... }:

{
  boot = {
    loader = {
      grub = {
        enable                = true;
        useOSProber           = true;
        efiInstallAsRemovable = true;
        efiSupport            = true;
        splashImage           = null;
        theme                 = "${import ./grub-theme.nix { inherit pkgs; }}";
        devices               = [ "nodev" ];
      };
      efi = {
        efiSysMountPoint      = "/boot/efi";
      };
    };
  };
}
