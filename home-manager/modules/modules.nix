{ pkgs, ... }:

{
  # Import modules
  imports = [
    ./zsh.nix
    ./gtk-and-qt.nix
    ./nixvim.nix
    ./git.nix
    ./dunst.nix
    ./kitty.nix
    ./lutris.nix
  ];
}
