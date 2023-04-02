let g:coc_global_extensions = ['coc-css', 'coc-emmet', 'coc-eslint', 'coc-html', 'coc-phpls', 'coc-prettier', 'coc-tsserver']

" ******** Maps

" Atajo para formatear el codigo.
vmap <leader>f  <Plug>(coc-format)
nmap <leader>f  <Plug>(coc-format)


" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)