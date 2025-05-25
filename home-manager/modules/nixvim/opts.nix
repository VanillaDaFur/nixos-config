{
  programs.nixvim = {
    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };
    opts = {
      updatetime = 100;

      number     = true; 

      swapfile   = false; 

      tabstop    = 2;
      softtabstop = 4;
      shiftwidth = 2; 
      expandtab = true;
      autoindent = true;
    }; 
  };
}
