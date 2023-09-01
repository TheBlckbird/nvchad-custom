local M = {}

M.general = {
  n = {
    ["cs"] = { "A;<ESC>", "Add a Semicolon at the end of the line" },
    ["m"] = { "o<ESC>" },
  },
}

M.tmux_navigation = {
  plugin = true,

  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  },
}

return M
