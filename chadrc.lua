---@type ChadrcConfig
local M = {}

-- local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "everforest_light" },

  statusline = {
    theme = "vscode_colored",
  },

  hl_override = {
    Comment = { italic = true },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
