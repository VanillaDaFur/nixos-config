{ pkgs, lib, ...}:

{
 imports = [
   ./boot.nix
   ./kernel.nix
   ./polkit.nix
   ./hyprland.nix
   ./services.nix
   ./graphics.nix
 ];
}
