return {
  "saecki/crates.nvim",
  ft = "toml",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    src = {
      cmp = {
        enabled = true,
      },
    },
  },
}
