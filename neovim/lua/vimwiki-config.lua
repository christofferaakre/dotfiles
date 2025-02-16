vim.g.vimwiki_list =
{
    {
        path = "~/dnd/zephyria/",
        template_path = "~/vimwiki_templates/",
        template_default = "main_template",
        template_ext = ".html"
    }
}

vim.keymap.set("n", "<leader>vv", "<cmd>VimwikiAll2HTML<CR>")
vim.keymap.set("n", "<leader>vr", "<cmd>VimwikiRenameFile<CR>yes<CR>")
