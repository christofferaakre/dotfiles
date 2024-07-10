-- set python3 path
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g["python3_host_prog"] = "c:/Users/caa/.local/venv/nvim/Scripts/python3"

-- global variables
require("globals")

require("sets")
require("plugins")
require("colors")
require("keybindings")
require("fugitive-config")
require("harpoon-config")
require("telescope-config")
require("toggleterm-config")
--require("treesitter")
require('hex-config')
--require("nvim-tree-config")
require("lsp")
--require("dap-config")
require("syntax_highlighting")
require("comment-config")
require('context')
require('whitespace')

