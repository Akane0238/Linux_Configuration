return {
	"windwp/nvim-autopairs",
	config = function()
		require("nvim-autopairs").setup({
			check_ts = true, -- enable treesitter integration if you are using treesitter
			disable_filetype = { "TelescopePrompt" }, -- disable for specific file types
		})
	end,
}
