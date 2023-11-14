vim.g.vimwiki_list =
{
    {
        path = "~/dnd/arath/",
        template_path = "~/vimwiki_templates/",
        template_default = "main_template",
        template_ext = ".html"
    }
}

vim.keymap.set("n", "<leader>vv", "<cmd>VimwikiAll2HTML<CR>")
