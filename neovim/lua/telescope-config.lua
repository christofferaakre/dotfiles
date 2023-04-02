local builtin = require('telescope.builtin')
--
-- Telescope keybindings

-- https://github.com/nvim-telescope/telescope.nvim#pickers

vim.keymap.set('n', '<leader>p', builtin.find_files, {})
vim.keymap.set('n', '<leader>o', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>q', builtin.quickfixhistory, {})
vim.keymap.set('n', '<leader>s', builtin.pickers, {})

require('telescope').load_extension('fzf')
