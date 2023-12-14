local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      autoformat = true,
    }
  }, 
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "jdtls", 
        "haskell-language-server",
        "rust-analyzer",
        "asm-lsp",
        "clangd",
        "grammarly-languageserver",
      },
    },
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "github/copilot.vim",
  },
  {
    "lervag/vimtex",
    ft = "tex",
  },
  {
    'iamcco/markdown-preview.nvim',
    ft = "markdown",
  },
  {
    'Sirver/ultisnips',
    ft = "markdown",
  },
}

return plugins
