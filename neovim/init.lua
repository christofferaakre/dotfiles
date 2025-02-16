-- set python3 path
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g["python3_host_prog"] = "~/.local/venv/nvim/bin/python3"

-- global variables
require("globals")

require("sets")
require("plugins")
require("colors")
require("keybindings")
require("undotree-config")
require("fugitive-config")
require("harpoon-config")
require("telescope-config")
require("toggleterm-config")
require("treesitter")
require("nvim-tree-config")
require("lsp")
require("dap-config")
require("syntax_highlighting")
require("comment")
require('context')
require("hex-config")
require("vimwiki-config")
require("filetypes")
