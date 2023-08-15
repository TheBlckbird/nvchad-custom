local overrides = require "custom.configs.overrides"

local plugins = {
  {
    "github/copilot.vim",
    event = "BufEnter",
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function(_)
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "intelephense",
        "svelte-language-server",
        "css-lsp",
        "html-lsp",
      },
    },
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "BufEnter",
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "vim-php/vim-php-refactoring",
    ft = { "php" },
  },

  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
  },

  {
    dir = "~/Desktop/side-projects/bible-votd",
  },
}

return plugins
