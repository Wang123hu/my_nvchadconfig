-- local on_attach = require("plugins.configs.lspconfig").on_attach
local on_attach
on_attach = function(client, bufnr)
  local status_ok, aerial = pcall(require, "aerial")
  if not status_ok then
    return
  end
  on_attach = require("plugins.configs.lspconfig").on_attach
end
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = { "pyright", "clangd" }

vim.diagnostic.config { virtual_text = false, underline = false }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
