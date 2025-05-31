local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n", 
  "<leader>a", 
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr }
)
vim.keymap.set(
  "n", 
  "K",  -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp({'hover', 'actions'})
  end,
  { silent = true, buffer = bufnr }
)

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
