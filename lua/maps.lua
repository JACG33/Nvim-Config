-- KeyMap

vim.keymap.set('i','ññ','<ESC>')

vim.keymap.set('n','<C-b>',':Explore<CR>')

vim.keymap.set('n','<Leader>vh',':sp<CR>')

vim.keymap.set('n','<Leader>vv',':vsp<CR>')

vim.keymap.set('n','<C-s>',':w<CR>')

vim.keymap.set('n','<Leader>q',':q<CR>')

vim.keymap.set('n','<Leader>qq',':q!<CR>')

vim.keymap.set('n','<Leader>s',':wa<CR>')

-- vim.keymap.set('n','<Leader>kp',':b ')

vim.keymap.set('n','<Leader>xc',':bd<CR>')

vim.keymap.set('n','<C-l>',':vertical resize +5<CR>')

vim.keymap.set('n','<C-h>',':vertical resize -5<CR>')

vim.keymap.set('n','<C-k>',':resize +5<CR>')

vim.keymap.set('n','<C-j>',':resize -5<CR>')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

vim.keymap.set('n', '<C-k><C-p>', builtin.buffers, {})

vim.keymap.set('i', '<C-k><C-p>', builtin.buffers, {})

vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

