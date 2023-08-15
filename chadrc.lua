---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",

  hl_override = highlights.override,
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
