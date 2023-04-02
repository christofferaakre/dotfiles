vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'gruvbox-community/gruvbox'
end)
