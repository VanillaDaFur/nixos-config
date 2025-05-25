{
  programs = {
    zsh = {
      enable                    = true;
      enableCompletion          = true;
      autosuggestion.enable     = true;
      syntaxHighlighting.enable = true;

      shellAliases = 
			  let
				  flake = "$HOME/.config/nixos-config";
				in { 
        ls = "exa --icons --color=always --group-directories-first";
        ll = "exa -alF --icons --color=always --group-directories-first";
        la = "exa -a --icons --color=always --group-directories-first";
        l  = "exa -F --icons --color=always --group-directories-first";
        rebuild = "sudo nixos-rebuild switch --flake ${flake}";
				update  = "nix flake update ${flake}";
				upgrade = "sudo nixos-rebuild switch --upgrade --flake ${flake}";
				home-sw = "home-manager switch --flake ${flake}";
      };
      history = {
        size = 5000;
        path = "$HOME/.zsh_history";
      };

      initContent = ''
			  if [ "$(tty)" = "/dev/tty1" ]; then
				 echo "Starting Hyprland..."
				 exec Hyprland
				fi
        # Fancy Theme!
        eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/meow-other.toml)"
        # Keybindings
        bindkey "^[[1;5D" backward-word
        bindkey "^[[1;5C" forward-word
        bindkey "^H"      backward-kill-word
      '';
    };
  };
}
