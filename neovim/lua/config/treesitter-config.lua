vim.filetype.add({extension = {wgsl = "wgsl"}})

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "cpp", "rust", "python", "javascript", "typescript", "tsx"},

  highlight = {
    enable = true,
  },
}

