local keymap = vim.keymap

-- Keybinding
vim.g.mapleader = " "
keymap.set('n', '<leader>w', ':w<CR>', {desc = 'Save'})
keymap.set('n', '<leader>q', ':q<CR>', {desc = 'Quit'})
keymap.set({'i','c'}, 'jk', '<Esc>')
keymap.set({'n','v'}, '9', '$')
