return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
    local lspconfig = require("lspconfig")
	local capabilities = require "cmp_nvim_lsp".default_capabilities()
	-- Add other language server setups as needed
    -- Example: lspconfig.pyright.setup{}
    lspconfig.clangd.setup{
		capabilities = capabilities
	}
	lspconfig.lua_ls.setup{
		capabilities = capabilities
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

