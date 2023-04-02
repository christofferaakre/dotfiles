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

