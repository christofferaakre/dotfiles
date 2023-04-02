vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'gruvbox-community/gruvbox'
    use {'numToStr/Comment.nvim'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'unblevable/quick-scope'
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'
end)
