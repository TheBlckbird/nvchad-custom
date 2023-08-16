local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.intelephense.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = { "php" },
  root_dir = lspconfig.util.root_pattern { "composer.json", ".git" },
}

local servers = { "html", "cssls", "svelte", "emmet_language_server", "tsserver", "tailwindcss" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
