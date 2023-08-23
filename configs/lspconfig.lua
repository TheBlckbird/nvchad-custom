local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "svelte",
  "emmet_ls",
  "tsserver",
  "tailwindcss",
  "intelephense",
  "solargraph",
  "pyright",
  "vuels",
  "java_language_server",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
