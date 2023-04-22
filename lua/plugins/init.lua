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
    {'lukas-reineke/indent-blankline.nvim'},

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
    {'HiPhish/nvim-ts-rainbow2'},

     -- Coc
    {'neoclide/coc.nvim', branch = 'release'},

    -- Telescope
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
