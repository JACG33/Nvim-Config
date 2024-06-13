return {
      -- Theme
    {'tomasiser/vim-code-dark'},

    -- Lualine
    {
    'nvim-lualine/lualine.nvim',
    dependencies = {'nvim-tree/nvim-web-devicons'},
    opts = true
    },

    -- Tmux
    {'christoomey/vim-tmux-navigator'},

    -- IdentLine
    {'lukas-reineke/indent-blankline.nvim', main = "ibl", opts = {}},

    -- Comments
    {'scrooloose/nerdcommenter'},

    -- Autopairs
    {'jiangmiao/auto-pairs'},

    -- Wrap word
    {'tpope/vim-surround'},

    -- Syntax colors css
    {'lilydjwg/colorizer'},

    -- Treesitter
    {'nvim-treesitter/nvim-treesitter',build = ":TSUpdate"},

    -- Rainbow2
    -- Deprecated 
    --{'HiPhish/nvim-ts-rainbow2'},
    {'HiPhish/rainbow-delimiters.nvim'},

     -- Coc
    {'neoclide/coc.nvim', branch = 'release'},

    --Mutiple cursors
    {'mg979/vim-visual-multi', branch= 'master'},

    -- Telescope
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
