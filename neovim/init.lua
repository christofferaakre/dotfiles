require("config.lazy")

-- set python3 path
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g["python3_host_prog"] = "~/.local/venv/nvim/bin/python3"

require("config.colors")

-- global variables
require("config/globals")
require("config/sets")
require("config/keybindings")
require("undotree-config")
require("fugitive-config")
require("harpoon-config")
require("telescope-config")
require("config/treesitter-config")
require("config/nvim-tree-config")
require("config/syntax_highlighting")
require("config/comment")
require('config/context')
require("config/hex-config")
require("config/vimwiki-config")
require("config/filetypes")
require("config/lsp")
