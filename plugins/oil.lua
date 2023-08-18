return {
  "stevearc/oil.nvim",
  config = function(_)
    require "custom.configs.plugins.oil"
  end,
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
}
