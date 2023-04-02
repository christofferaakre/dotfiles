-- disable netrw at the very start of your init.lua (strongly advised)

map('n', '<c-p>', ':NvimTreeToggle<CR>', { silent = true, noremap = true })

-- empty setup using defaults
require("nvim-tree").setup()

-- -- OR setup with some options
-- require("nvim-tree").setup({
--   sort_by = "case_sensitive",
--   renderer = {
--     group_empty = true,
--   },
--   filters = {
--     dotfiles = true,
--   },
-- })
