local M = {}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  filters = { custom = { "^.git$" } },
}

M.colorizer = {
  filetypes = { "*", svelte = { tailwind = true } },
  user_default_options = {
    tailwind = true,
    css = true,
  },
  buftypes = {},
}

local cmp = require "cmp"

M.cmp = {
  completion = { completeopt = "noselect" },
  preselect = cmp.PreselectMode.None,
}

return M
