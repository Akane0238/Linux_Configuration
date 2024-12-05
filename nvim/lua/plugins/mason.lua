return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  config = function()
    -- mason configuration
    require "mason".setup {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    }

    -- mason-lspconfig configuration
    require("mason-lspconfig").setup {
		-- lsp language server 
		ensure_installed = { "lua_ls", "clangd", "gopls", "pyright"}
    }
  end
}
