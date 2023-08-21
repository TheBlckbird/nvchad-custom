local M = {}

M.general = {
  n = {
    ["<leader>cs"] = { "A;<ESC>", "Insert Semicolon" },
    ["m"] = { "o<ESC>" },
    ["z"] = { "<C-r>" },
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

M.venn = {
  plugin = true,

  n = {
    ["ä"] = { "<cmd> VBox<CR>" },
  },
}

return M
