local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

return {
  "simrat39/rust-tools.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  opts = function()
    server = {
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end,
  config = function(_, opts)
    require("rust-tools").setup(opts)
  end,
  ft = "rust",
}
