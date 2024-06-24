return {
  'nvim-treesitter/nvim-treesitter',
  build = ":TSUpdate",
  config = function()
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { "css", "html", "php", "javascript", "json", "lua",},

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Indent
      -- Indentación basada en treesitter para el = operador. NOTA: Esta es una característica experimental .
      indent = {
        enable = true
      },

      highlight = { enable = true,},
      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
      --  rainbow = {
      --      enable = true,
      --  }
    }
  end
}
