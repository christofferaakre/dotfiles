-- fugitive keybindings
map('n', '<leader>gs', ':G<CR>', { noremap = true, silent = false})
map('n', '<leader>gc', ':Git commit<CR>', { noremap = true, silent = false})
map('n', '<leader>gp', ':Git push<CR>', { noremap = true, silent = false})

map('n', '<leader>da', ':diffget 1<CR>', { noremap = true, silent = false})
map('n', '<leader>db', ':diffget 2<CR>', { noremap = true, silent = false})
map('n', '<leader>dc', ':diffget 3<CR>', { noremap = true, silent = false})
