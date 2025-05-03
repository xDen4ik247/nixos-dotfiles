{
  programs.nixvim.plugins = {

    treesitter = {
      enable = true;
      nixvimInjections = true;
      settings = {
        folding.enable = true;
        indent.enable = true;
      };
    };

    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        # Set to false if you have an `updatetime` of ~100.
        clearOnCursorMove = false;
      };
    };

    hmts.enable = true;

    lsp = {
      enable = true;
      servers = {
        #pylsp.settings.plugins.flake8.enabled = true;
        # pyright.filetypes = "python";
        #pyright.enable = true;
      };
    };
  };
}
