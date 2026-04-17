local lsp_bindings = function()
    local bufmap = function(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc, silent = true })
    end

    -- LSP core
    bufmap('n', 'gd', vim.lsp.buf.definition, 'Go to Definition')
    bufmap('n', 'gD', vim.lsp.buf.declaration, 'Go to Declaration')
    bufmap('n', 'gi', vim.lsp.buf.implementation, 'Go to Implementation')
    bufmap('n', 'gr', vim.lsp.buf.references, 'Find References')
    bufmap('n', 'K', vim.lsp.buf.hover, 'Hover Documentation')
    bufmap('n', '<C-k>', vim.lsp.buf.signature_help, 'Signature Help')

    -- Workspace
    bufmap('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, 'Add Workspace Folder')
    bufmap('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, 'Remove Workspace Folder')
    bufmap('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, 'List Workspace Folders')

    -- Code actions
    bufmap('n', '<leader>rn', vim.lsp.buf.rename, 'Rename Symbol')
    bufmap({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, 'Code Action')

    -- Diagnostics
    bufmap('n', '[d', vim.diagnostic.goto_prev, 'Previous Diagnostic')
    bufmap('n', ']d', vim.diagnostic.goto_next, 'Next Diagnostic')
    bufmap('n', '<leader>e', vim.diagnostic.open_float, 'Show Diagnostic')
    bufmap('n', '<leader>q', vim.diagnostic.setloclist, 'Quickfix Diagnostics')

    -- Format
    bufmap('n', '<leader>f', function()
        vim.lsp.buf.format { async = true }
        end, 'Format Buffer')
    end


vim.lsp.config.pyright = {
  on_attach = lsp_bindings 
}

-- nvim-cmp setup
local cmp = require'cmp'

cmp.setup({
  mapping = {
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
  },
  sources = {
    { name = 'nvim_lsp' },
    -- optionally add more like buffer, path, etc.
  }
})

-- rustaceanvim and lspconfig setup
vim.g.rustaceanvim = {
  server = {
    on_attach = function(client, bufnr)
      -- enable completion
      require('cmp_nvim_lsp').default_capabilities()
    end,
  },
}

vim.lsp.enable('pyright')
vim.lsp.enable('vue_ls')
vim.lsp.enable('prettier')
vim.lsp.enable('eslint')
vim.lsp.enable('cmake')
