{
  programs.nixvim = {
    enable = true;

    colorschemes.catppuccin = {
      enable = true;

      settings = {
        transparent_background = true;
      };
    };
  };
	imports = [
    ./nixvim/plugins.nix
		./nixvim/opts.nix
	];

	home.sessionVariables = {
    EDITOR = "nvim";
	};
}
