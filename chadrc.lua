---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "gruvbox",
  theme_toggle = { "gruvbox", "github_light" },

  statusline = {
    theme = "vscode_colored",
  },

  hl_override = highlights.override,
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
