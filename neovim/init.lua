-- set python3 path
vim.g["python3_host_prog"] = "~/.local/venv/nvim/bin/python3"

-- global variables
require("globals")

require("sets")
require("plugins")
require("colors")
require("keybindings")
require("harpoon-config")
require("telescope-config")
require("toggleterm-config")
require("treesitter")
require("nvim-tree-config")
require("syntax_highlighting")
require("comment")
require('context')

