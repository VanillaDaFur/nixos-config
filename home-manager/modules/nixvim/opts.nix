{
  programs.nixvim = {
    clipboard = {
      register                 = "unnamedplus";
      providers.wl-copy.enable = true;
    };
    opts = {
      updatetime = 100;

      number     = true; 

      swapfile   = false; 

      tabstop    = 2;
      shiftwidth = 2; 
    };
	};
}
