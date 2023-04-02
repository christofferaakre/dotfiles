vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'gruvbox-community/gruvbox'
    use {'numToStr/Comment.nvim'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'unblevable/quick-scope'
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }   use 'nvim-telescope/telescope.nvim'
    use {"akinsho/toggleterm.nvim", tag = '*', config = function() require("toggleterm").setup() end}
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'
    use 'neovim/nvim-lspconfig'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
end)
