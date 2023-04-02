call plug#begin('~/AppData/Local/nvim/plugins') 	"directorio donde se van a instalar los plugins

" Themes
Plug 'tomasiser/vim-code-dark'

"Status Bar
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'   "para poner icono a direcotiro


"Tmux
Plug 'christoomey/vim-tmux-navigator'	" Poder navegar entre las ventanas al estar divididas

"Autocomplementado
Plug 'neoclide/coc.nvim', {'branch': 'release'}


"IDE
Plug 'Yggdroot/indentLine'              "indentacion
Plug 'scrooloose/nerdcommenter' "comentarios
Plug 'jiangmiao/auto-pairs'             "autocompletado de llaves, corchetes, etc
Plug 'tpope/vim-surround'  "Para envolver una palabra en un signo, corchete, parentesis

"Sintax
Plug 'lilydjwg/colorizer' "Color hexadecimal en css, pinta
Plug 'sheerun/vim-polyglot' "Coloreado de los lenguajes. 

"Bracket Pair Colorizer
Plug 'luochen1990/rainbow'

call plug#end() 			

" *********Colores*********
" Activa tema onedark.
colorscheme codedark

"Establézcalo en 0 si desea habilitarlo más tarde a través de: RainbowToggle
let g:rainbow_active = 1 

" Activa el resaltado de syntaxis
syntax on


" *********Espacios y Tabulaciones*********
" Espacios de la sangría.
set tabstop=2

" Número de espacios en la pestaña al editar.
set softtabstop=2

" Al cmbiar estable esta sangria.
set shiftwidth=2

" Identado de lenguajes
set smartindent

" Las Tabulaciones son espacios.
set expandtab

" ********* IU Configuraciones*********
"Muestra los numeros de cada linea en la parte izquierda.
set number

" Habilite el menú de finalización automática después de presionar TAB. 
set wildmenu

set wildoptions=pum
" Mostrar comando en la barra inferior.
set showcmd


" 
set hidden

" https://shapeshed.com/vim-netrw/
" https://vonheikemen.github.io/devlog/es/tools/using-netrw-vim-builtin-file-explorer/
" Vista en formato de arbol.
let g:netrw_liststyle = 3

" Abrir en ventana anterior.
let g:netrw_browse_split = 4

" Establecer el ancho del explorador de directorios.
let g:netrw_winsize = 25


" Habilite la detección de tipo de archivo. Vim podrá intentar detectar el tipo de archivo en uso.
" Habilite los complementos y cargue el complemento para el tipo de archivo detectado.
" Cargue un archivo de sangría para el tipo de archivo detectado.
filetype plugin indent on

" Redibujar solo cuando sea necesario.
set lazyredraw 

" Permite la interacion con el mouse
set mouse=a


" El texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
set wrap

" Mostrar siempre la posición del cursor.
set ruler

" Establece el título de la ventana, reflejando el archivo que se está editando actualmente.
set title

" Resaltar coincidencia [{()}]
set showmatch

" Controla cuándo/cómo mostrar la barra de estado.
set laststatus=2


" *********Búsqueda*********
" Búsqueda incremental que muestra coincidencias parciales.
set incsearch

" Ignorar mayúsculas y minúsculas al buscar.
set ignorecase

" Cambia automáticamente la búsqueda a mayúsculas y minúsculas cuando la consulta de búsqueda contiene una letra mayúscula.
set smartcase

" Resaltar coincidencias.
set hlsearch


" *******Plegado*********
" Plegado basado en niveles de sangría.
set foldmethod=manual

" Deshabilita el plegado de forma predeterminada.
set nofoldenable

" Hacer que la nueva ventana aparezca a la derecha.
set splitright

" Para evitar el mensaje que sale al abrir algunos archivos sobre swap.
set noswapfile

" Para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y viceversa.	
set clipboard=unnamedplus


" Tener un tiempo de actualización más largo (el valor predeterminado es 4000 ms = 4 s) conduce a una notable 
" retrasos y mala experiencia de usuario
set updatetime=150

" No realizar copias de seguridad.
set nobackup


" Tecla lider para la ejecucion de comandos o atajos.
let mapleader=","

" Abrir/cerrar el explorador de archivos
map <C-b> :Lexplore!<CR>

" Escriba ññ para salir rápidamente del modo de inserción.
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


" Atajo para formatear el codigo.
vmap <leader>f  <Plug>(coc-format)
nmap <leader>f  <Plug>(coc-format)


" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Emmet de forma Global
let g:user_emmet_install_global = 0
"autocmd FileType html,css,js EmmetInstall


" Funciones para guardar el projecto actual.
function! s:load_session_project(t) abort
    let dir="~/AppData/Local/nvim/sessions/"..split(getcwd(),"\\")[-1]..".vim"
    execute ':source'..dir
    echom "loadSession"
endfunction


function! s:save_session_project(t) abort
    let dir="~/AppData/Local/nvim/sessions/"..split(getcwd(),"\\")[-1]..".vim"
    execute ':mksession!'..dir
    echom "saveSession"
endfunction

augroup user_cmds
    autocmd!
    autocmd VimEnter * call timer_start(2000, function('s:load_session_project'))
    autocmd VimEnter * call timer_start(30000, function('s:save_session_project'),{ 'repeat': -1 })
augroup END

"CocInstall Plugins
"
"coc-css
"
"coc-emmet
"
"coc-eslint
"
"coc-html
"
"coc-phpls
"
"coc-prettier
"
"coc-tsserver
