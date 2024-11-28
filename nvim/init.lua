-- Options
require("config.options")
-- Keymaps
require("config.keybinding")
-- Plugins management
require("config.lazy")

-- Visualization
vim.api.nvim_set_hl(0, "Visual", { bg = "#4a536e", fg = "NONE"})

-- Avoid automatically continuing comment symbols (//) on a new line
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove("r")
  end,
})
