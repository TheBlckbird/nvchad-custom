local M = {}

M.general = {
  n = {
    ["cs"] = { "A;<ESC>", "Add a Semicolon at the end of the line" },
    ["cr"] = { "A,<ESC>", "Add a Comma at the end of the line" },
    ["m"] = { "o<ESC>" },
  },
}

M.trouble = {
  n = {
    ["tt"] = {
      "<cmd> TroubleToggle <CR>",
      "Toggle Trouble",
    },
  },
}

M.crates = {
  n = {
    ["<leader>cU"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
      "Upgrade crates",
    },

    ["<leader>cp"] = {
      function()
        require("crates").show_crate_popup()
      end,
      "Show crates popup",
    },

    ["<leader>cu"] = {
      function()
        require("crates").upgrade_crate()
      end,
    },
  },
}

return M
