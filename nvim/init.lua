-- Options
require("config.options")
-- Keymaps
require("config.keybinding")
-- Plugins management
require("config.lazy")

-- Visualization
vim.api.nvim_set_hl(0, "Visual", { bg = "#4a536e", fg = "NONE"})
