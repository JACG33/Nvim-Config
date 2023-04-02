" Tecla lider para la ejecucion de comandos o atajos.
let mapleader=","

" Abrir/cerrar el explorador de archivos
map <C-b> :Lexplore!<CR>

" Escribir ññ para salir rápidamente del modo de inserción.
inoremap ññ <Esc>

" Abrir la configuracion de NVim.
nnoremap <Leader>e :e ~/AppData/Local/nvim/init.vim<CR>


" Divide y duplica el archivo en otra ventana.
" De forma Vertical
nnoremap <Leader>vv :vsp<CR>

" De forma Horizontal
noremap <Leader>vh :sp<CR>

" Guardar el archivo actual.
nnoremap <Leader>w :w<CR>

" Cerrar todo.
nnoremap <Leader>q :q<CR>

" Cerrar todo descartando los cambios
nnoremap <Leader>qq :q!<CR>

" Mostrar los archivos arbiertos. 
nnoremap <Leader>kp :b 

" GUarda todos los archivos abierto
nnoremap <Leader>ks :wa<CR>

" Cerrar el archivos actual.
nnoremap <leader>xc :bd<CR>


" Ajustar el tamano de las ventanas
nnoremap <C-right> :vertical resize +5<CR>
nnoremap <C-left>  :vertical resize -5<CR>
nnoremap <C-up>    :resize +5<CR>
nnoremap <C-down>  :resize -5<CR>

