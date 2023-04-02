vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap

-- Easy split navigation
map('n', '<C-J>', '<C-W>j', { noremap = true, silent = false})
map('n', '<C-K>', '<C-W>k', { noremap = true, silent = false})
map('n', '<C-L>', '<C-W>l', { noremap = true, silent = false})
map('n', '<C-H>', '<C-W>h', { noremap = true, silent = false})

-- Clear search on ESC
map('n', '<ESC>', ':nohlsearch<CR><ESC>', { noremap = true, silent = false})

-- Save on Ctrl+s
map('n', '<C-S>', ':w<CR>', { noremap = true, silent = false})