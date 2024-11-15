return {
  "EdenEast/nightfox.nvim",
  lazy = false, -- make sure we load this during startup 
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
	require("nightfox").setup({
	  options = {
		transparent = true,
		terminal_colors = true,
	  }
	})
	-- load the colorscheme here
	vim.cmd([[colorscheme nightfox]])
  end,
}
