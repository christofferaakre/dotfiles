vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'gruvbox-community/gruvbox'
    use {'numToStr/Comment.nvim'}
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'unblevable/quick-scope'
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }   use 'nvim-telescope/telescope.nvim'
    use {"akinsho/toggleterm.nvim", tag = '*', config = function() require("toggleterm").setup() end}
    --use 'nvim-tree/nvim-tree.lua'
    --use 'nvim-tree/nvim-web-devicons'
    --use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }
    use { 'RaafatTurki/hex.nvim' }
    --use { 'folke/neoconf.nvim' }

    use 'simrat39/rust-tools.nvim'
    --use 'mfussenegger/nvim-dap'
    --use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
    --use 'theHamsta/nvim-dap-virtual-text'
end)
