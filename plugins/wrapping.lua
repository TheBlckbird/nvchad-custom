return {
  "andrewferrier/wrapping.nvim",
  config = function()
    require("wrapping").setup()
  end,
  event = "BufEnter",
}
