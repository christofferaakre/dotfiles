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

-- harpoon keybindings
local map = vim.api.nvim_set_keymap

map('n', '<leader>mf', ':lua require("harpoon.mark").add_file()<CR><CR>', { noremap = true, silent = false })
map('n', '<leader>mm', ':lua require("harpoon.ui").toggle_quick_menu()<CR><CR>', { noremap = true, silent = false })
map('n', '<leader>1',':lua require("harpoon.ui").nav_file(1)<CR><CR>', { noremap = true, silent = false })
map('n', '<leader>2',':lua require("harpoon.ui").nav_file(2)<CR><CR>', { noremap = true, silent = false })
map('n', '<leader>3',':lua require("harpoon.ui").nav_file(3)<CR><CR>', { noremap = true, silent = false })
map('n', '<leader>4',':lua require("harpoon.ui").nav_file(4)<CR><CR>', { noremap = true, silent = false })
map('n', '<leader>5',':lua require("harpoon.ui").nav_file(5)<CR><CR>', { noremap = true, silent = false })
map('n', '<leader>6',':lua require("harpoon.ui").nav_file(6)<CR><CR>', { noremap = true, silent = false })
map('n', '<leader>7',':lua require("harpoon.ui").nav_file(7)<CR><CR>', { noremap = true, silent = false })
map('n', '<leader>8',':lua require("harpoon.ui").nav_file(8)<CR><CR>', { noremap = true, silent = false })
map('n', '<leader>9',':lua require("harpoon.ui").nav_file(9)<CR><CR>', { noremap = true, silent = false })
map('n', '<leader>0',':lua require("harpoon.ui").nav_file(10)<CR><CR>',{ noremap = true, silent = false })

-- Telescope keybindings
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true, silent = false})
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true, silent = false})
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true, silent = false})
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true, silent = false})
