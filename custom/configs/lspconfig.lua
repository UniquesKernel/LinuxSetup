local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

lspconfig.jdtls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = { "java" },
  settings = {
    java = {
      signatureHelp = { enabled = true },
      contentProvider = { preferred = 'fernflower' },
      root_dir = { "gradlew", "mvnw", ".git" },

    },
  },
})

lspconfig.hls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = { "haskell", "lhaskell" },
})

lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = { "rust" },
})

lspconfig.asm_lsp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = { "asm", "assembly" },
})

lspconfig.clangd.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
