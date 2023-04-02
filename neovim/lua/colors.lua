vim.opt.termguicolors = true

vim.cmd("colorscheme gruvbox")


vim.cmd("highlight Normal guibg=None")

vim.cmd("augroup qs_colors \n" ..
  "autocmd! \n" ..
  "autocmd ColorScheme * highlight QuickScopePrimary guifg='#5fffff' gui=underline ctermfg=155 cterm=underline \n" ..
  "autocmd ColorScheme * highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline \n" ..
"augroup END\n"
)
