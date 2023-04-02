vim.filetype.add({extension = {wgsl = "wgsl"}})

-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
--
-- parser_config.wgsl = {
--     install_info = {
--         url = "https://github.com/szebniok/tree-sitter-wgsl",
--         files = {"src/parser.c"}
--     },
-- }

-- require'nvim-treesitter.configs'.setup {
--     ensure_installed = {"wgsl"},
--     highlight = {
--         enable = true
--     },
-- }

-- vim.wo.foldmethod = "expr"
-- vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.o.foldlevelstart = 99 -- do not close folds when a buffer is opened
