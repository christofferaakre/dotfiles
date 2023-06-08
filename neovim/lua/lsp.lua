-- neoconf setup
require("neoconf").setup({})

local lsp = require('lsp-zero').preset({})
local lspconfig = require 'lspconfig'

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
    'pyright',
    'tsserver',
    'clangd',
    'bashls',
    'cmake',
    'cssls',
    'eslint',
    'html',
    'lua_ls',
})

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

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>e", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "<leader>en", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "<leader>ep", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)


lsp.setup()

local rt = require("rust-tools")

local extension_path = vim.env.HOME .. '/.vscode/extensions/vadimcn.vscode-lldb-1.9.2/'
local codelldb_path = extension_path .. 'adapter/codelldb'
local liblldb_path = extension_path .. 'lldb/lib/liblldb'
local this_os = vim.loop.os_uname().sysname;

-- The path in windows is different
if this_os:find "Windows" then
    codelldb_path = package_path .. "adapter\\codelldb.exe"
    liblldb_path = package_path .. "lldb\\bin\\liblldb.dll"
else
    -- The liblldb extension is .so for linux and .dylib for macOS
    liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
end

local opts = {
    server = {
        on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>ca", rt.code_action_group.code_action_group, { buffer = bufnr })
            vim.keymap.set("n", "<Leader>t", rt.open_cargo_toml.open_cargo_toml)
        end,
        settings = {
            ['rust-analyzer'] = {
                check = {
                    command = "clippy"
                }
            }
        },
    },

    dap = {
        adapter = require('rust-tools.dap').get_codelldb_adapter(
            codelldb_path, liblldb_path)
    }
}

rt.setup(opts)
