return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {"p00f/nvim-ts-rainbow"},
  run = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
  config = function()
	require("nvim-treesitter.configs").setup({
	  -- Add languages you need
	  ensure_installed = { "lua", "cpp", "c", "go"},
	  highlight = {	enable = true, additional_vim_regex_highlighting = false},
	  rainbow = { enable = true, extended_mode = true, max_file_line = nil},
      fold = { enable = true}
	})

    -- Disable diagnostic signs (W, E, etc.)
    for _, sign in ipairs({ "DiagnosticSignError", "DiagnosticSignWarn", "DiagnosticSignHint", "DiagnosticSignInfo" }) do
      vim.fn.sign_define(sign, { text = "", numhl = "", texthl = "" })
    end
  end,
}
