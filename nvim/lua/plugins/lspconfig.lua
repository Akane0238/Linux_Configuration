return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require "cmp_nvim_lsp".default_capabilities()

    -- Define custom key mappings in the on_attach function
    local on_attach = function(client, bufnr)
      -- Buffer-local key mapping options
      local opts = { noremap = true, silent = true, buffer = bufnr }

      -- Key mappings
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)        -- Go to definition
      vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)       -- Go to declaration
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)              -- Show hover docs
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)    -- Rename symbol
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts) -- Code actions
      vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)        -- Show references
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)      -- Previous diagnostic
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)      -- Next diagnostic
    end

    -- Add other language server setups as needed
    -- Example: lspconfig.pyright.setup{}
    lspconfig.clangd.setup{
      capabilities = capabilities,
      on_attach = on_attach
    }
    lspconfig.lua_ls.setup{
      capabilities = capabilities,
      on_attach = on_attach
    }

    -- Optional: Customize LSP diagnostics
    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
    })

  end,
}

