return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    -- Lazy loading
    event = { 'BufReadPost', 'BufNewFile'  },
}
