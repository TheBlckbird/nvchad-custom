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

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,

    header = {
      " ______  __ __    ___  ____   _        __  __  _  ____   ____  ____   ___   ",
      "|      ||  |  |  /  _]|    \\ | |      /  ]|  |/ ]|    \\ |    ||    \\ |   \\  ",
      "|      ||  |  | /  [_ |  o  )| |     /  / |  ' / |  o  ) |  | |  D  )|    \\ ",
      "|_|  |_||  _  ||    _]|     || |___ /  /  |    \\ |     | |  | |    / |  D  |",
      "  |  |  |  |  ||   [_ |  O  ||     /   \\_ |     \\|  O  | |  | |    \\ |     |",
      "  |  |  |  |  ||     ||     ||     \\     ||  .  ||     | |  | |  .  \\|     |",
      "  |__|  |__|__||_____||_____||_____|\\____||__|\\_||_____||____||__|\\_||_____|",
    },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
