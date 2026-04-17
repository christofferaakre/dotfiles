-- neoconf setup
require("neoconf").setup({})

local ignored_projects = {'pokeemerald'}
local cwd = vim.loop.cwd()
local disable_lsp = false
for _, project in ipairs(ignored_projects) do
    disable_lsp = disable_lsp or string.find(cwd, project)
end

if not disable_lsp then

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

end -- endif not disable_lsp
