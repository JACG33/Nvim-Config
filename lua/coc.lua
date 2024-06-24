--vim.g.coc_global_extensions = {'coc-css', 'coc-emmet', 'coc-eslint', 'coc-html', 'coc-phpls', 'coc-prettier', 'coc-tsserver'}

-- Atajo para formatear el codigo.

--local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}

--vim.keymap.set('x','<Leader>f','<Plug>(coc-format)', {silent = true})
--vim.keymap.set('n','<Leader>f','<Plug>(coc-format)', {silent = true})


-- GoTo code navigation
--vim.keymap.set('n','gd','<Plug>(coc-definition)', {silent = true})
--vim.keymap.set('n','gy','<Plug>(coc-type-definition)', {silent = true})
--vim.keymap.set('n','gi','<Plug>(coc-implementation)', {silent = true})
--vim.keymap.set('n','dr','<Plug>(coc-references)', {silent = true})


-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
--vim.keymap.set("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)


-- Use K to show documentation in preview window
--function _G.show_docs()
--    local cw = vim.fn.expand('<cword>')
--    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
--        vim.api.nvim_command('h ' .. cw)
--    elseif vim.api.nvim_eval('coc#rpc#ready()') then
--        vim.fn.CocActionAsync('doHover')
--    else
--        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
--    end
--end
--vim.keymap.set("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})
