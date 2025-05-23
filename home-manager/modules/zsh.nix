{
  programs = {
    zsh = {
      enable                    = true;
      enableCompletion          = true;
      autosuggestion.enable     = true;
      syntaxHighlighting.enable = true;

      #shellAliases = {
      #  ls = "exa --icons --colors=always --group-directories-first";
      #  ll = "exa -alF --icons --colors=always --group-directories-first";
      #  la = "exa -a --icons --colors=always --group-directories-first";
      #  l  = "exa -F --icons --color=always ---group-directories-first";
      #};
      history = {
        size = 5000;
        path = "$HOME/zsh_history";
      };

      initExtra = ''
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
