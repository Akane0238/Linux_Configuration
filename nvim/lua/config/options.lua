local opt = vim.opt

-- Options
opt.number = true
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.wrap = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true

opt.swapfile = false
opt.clipboard = "unnamedplus"

opt.foldmethod = "expr"                     -- Use an expression to define folds
opt.foldexpr = "nvim_treesitter#foldexpr()" -- Use Tree-sitter's folding expression
opt.foldenable = true
opt.foldlevel  = 99
