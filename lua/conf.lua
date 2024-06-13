-- Activar resaltado de sintaxis
vim.o.syntax= 'enable'

-- Espacios y Tabulaciones

vim.o.tabstop = 2

vim.o.softtabstop = 2

vim.o.shiftwidth = 2

-- Plegado basado en Tree-sitter. (Técnicamente no es un módulo porque es por ventana y no por búfer).
--vim.o.foldmethod='expr'
--vim.o.foldexpr='nvim_treesitter#foldexpr()'
-- vim.o.nofoldenable

vim.o.smartindent = true

vim.o.expandtab = true

--UI

vim.wo.number = true

vim.o.showcmd = true

vim.o.termguicolors = true

vim.o.background = 'dark'

vim.cmd.colorscheme('codedark')

-- https://shapeshed.com/vim-netrw/
-- https://vonheikemen.github.io/devlog/es/tools/using-netrw-vim-builtin-file-explorer/
-- vim.g.netrw_liststyle = 3

-- vim.g.netrw_winsize = 25

vim.o.lazyredraw = true

-- Ident
vim.g.indent_blankline_char = '▏'

vim.g.show_trailing_blankline_indent="false"

vim.o.mouse = 'a'

vim.o.wrap= true

vim.o.ruler = true

vim.o.laststatus = 2

--vim.o.clipboard = 'unnamedplus'

vim.opt.clipboard:prepend { 'unnamed' , 'unnamedplus' }

--vim.opt.clipboard:append { 'unnamedplus' }

vim.o.breakindent = true

-- Busqueda

vim.o.ignorecase = true

vim.o.incsearch = true

vim.o.smartcase = true

-- Plegado

-- vim.wo.nofoldenable = true

vim.o.splitright = true

vim.o.updatetime = 200

vim.o.hidden = true

vim.opt.swapfile = false

vim.opt.backup = false
