{
  programs.nixvim = {
    plugins = {
      # Beautiful line
      lualine.enable      = true;
      
      # File browser for nvim
      telescope.enable    		= true;

      # Shows which collor is hidden under HEX color
      colorizer.enable    		= true;
      
      # Beautiful icons for nvim
      web-devicons.enable 		= true;
      
      # Shows changed lines from last git commit
      gitsigns.enable         = true;
      
			# Idk what to say about this, just lines
			indent-blankline.enable = true;

      # Plugin for comfort
      mini = {
			  enable = true;
				modules = {
				  pairs = {
					  modes = {
						  insert = true;
							command = true;
							terminal = false;
						};
						skip_next = "[%w%%%'%[\"%.%%$]";
						skip_ts = [ "string" ];
      			skip_unbalanced = true;
      			markdown = true;
					};
				};
			};
      treesitter = {
        enable = true;
	      settings = {
	        ensure_installed = [
	          "lua"
            "bash"
            "markdown"
      			"markdown_inline"
      			"python"
      			"json"
      			"yaml"
      			"nix"
      			"toml"
	  			];
				};
      };

      lsp = {
        enable  = true;
				servers = {
	  			# Toml
	  			taplo.enable       = true;

          # Json / Jsonc
	  			jsonls.enable      = true;
          
	  			# CSS
	  			tailwindcss.enable = true;
	  
	  			# Python
	  			pylsp.enable       = true;
	  
	  			# Nix
	  			nixd.enable         = true;
				};
      };
    };
	};
}
