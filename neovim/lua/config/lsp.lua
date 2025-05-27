local cwd = vim.loop.cwd()

--require("mason").setup()
--require("mason-lspconfig").setup()

local on_attach = function(client, bufnr)
    local map = function(mode, lhs, rhs)
        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, remap = flase })
    end

    map("n", "K", vim.lsp.buf.hover)
    map("n", "gd", vim.lsp.buf.definition)
    map("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
    map("n", "<leader>ef", vim.diagnostic.open_float)
    map("n", "<leader>en", vim.diagnostic.goto_next)
    map("n", "<leader>ep", vim.diagnostic.goto_prev)
    map("n", "gr", vim.lsp.buf.references)
    map("n", "<leader>rn", vim.lsp.buf.rename)
    map("i", "<C-h>", vim.lsp.buf.signature_help)
end
