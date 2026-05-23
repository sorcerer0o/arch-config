return {
  -- Mason: Package manager for LSP, linters, and formatters
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Extension to bridge mason with lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- Auto-install jsonls on startup
        ensure_installed = { "jsonls" },
      })
    end,
  },

  -- Quickstart configs for Nvim LSP (Updated for Nvim 0.11+)
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Modern Nvim 0.11+ setup: Use vim.lsp.config instead of require('lspconfig')
      if vim.lsp.config then
        vim.lsp.config("jsonls", {})
      else
        -- Fallback for older Neovim versions
        require("lspconfig").jsonls.setup({})
      end
    end,
  }
}
