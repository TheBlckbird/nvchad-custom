return {
  "windwp/nvim-ts-autotag",
  config = function(_)
    require("nvim-ts-autotag").setup()
  end,
  ft = {
    "astro",
    "glimmer",
    "handlebars",
    "html",
    "javascript",
    "javascriptreact",
    "jsx",
    "svelte",
    "typescript",
    "typescriptreact",
    "tsx",
    "vue",
    "markdown",
    "php",
    "rescript",
    "xml",
  },
}
