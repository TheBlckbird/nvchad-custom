return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require "custom.configs.plugins.null-ls"
    end,
  },
  config = function(_)
    require "plugins.configs.lspconfig"
    require "custom.configs.lspconfig"
  end,
}
