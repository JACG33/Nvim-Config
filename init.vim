call plug#begin('~/AppData/Local/nvim/plugins') 	"directorio donde se van a instalar los plugins

"plugins

" Themes
Plug 'joshdick/onedark.vim' 		      "Tema

" Emmet
Plug 'mattn/emmet-vim' 			          "Emmet para diseño web

"Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'   "para poner icono a direcotiro

" Arbol de Directorios
Plug 'scrooloose/nerdtree'		        "Gestor de archivos en forma de arbol.

"Tmux
Plug 'christoomey/vim-tmux-navigator'	" Poder navegar entre las ventanas al estar divididas

"Autocomplementado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"IDE
Plug 'terryma/vim-multiple-cursors'
Plug 'Yggdroot/indentLine'              "indentacion
Plug 'scrooloose/nerdcommenter' "comentarios
Plug 'jiangmiao/auto-pairs'             "autocompletado de llaves, corchetes, etc
Plug 'tpope/vim-surround'  "Para envolver una palabra en un signo, corchete, parentesis

"Sintax
Plug 'lilydjwg/colorizer' "Color hexadecimal en css, pinta

" Busqueda
Plug 'junegunn/fzf.vim'  "busquedas de archivos, lines
Plug 'junegunn/fzf'


" Vim Script
Plug 'folke/persistence.nvim'


call plug#end() 			"cerramos el llamado de los plugins


" Configuraciones
"
" Habilite la detección de tipo de archivo. Vim podrá intentar detectar el tipo de archivo en uso.
filetype on

"Habilite los complementos y cargue el complemento para el tipo de archivo detectado.
filetype plugin on

" Cargue un archivo de sangría para el tipo de archivo detectado.
filetype indent on

" Activa el resaltado de syntaxis
syntax on

"Muestra los numeros de cada linea en la parte izquierda.
set number

" Habilite el menú de finalización automática después de presionar TAB. 
set wildmenu

" Permite la interacion con el mouse
set mouse=a


" Me deja de mostrar el modo en el que estamos 'normal, insert, visual, etc'
set noshowmode

" El texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
set wrap

" Para evitar el mensaje que sale al abrir algunos archivos sobre swap.
set noswapfile


" Para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y viceversa.	
set clipboard=unnamedplus


" Activa true colors en la terminal.
set termguicolors


" Activa tema onedark.
colorscheme onedark

" Tener un tiempo de actualización más largo (el valor predeterminado es 4000 ms = 4 s) conduce a una notable 
" retrasos y mala experiencia de usuario
set updatetime=300



set noerrorbells
set sw=2 sts=2
set smartindent
set nobackup
set showmatch
set incsearch
set ignorecase
set cursorline
set showcmd
set ruler
set laststatus=2
set smartcase
set hlsearch
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
filetype plugin indent on
set colorcolumn=80
"cuando hagamos split se acomode abajo o arriba
set splitbelow
set splitright
"Para pelgar codigo de lenguaje de programacion
set foldmethod=syntax
set foldmethod=indent
set nofoldenable        "dont fold by default


" Nerdtree *********
" Abrir/cerrar NERDTree con F2
map <C-b> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

" Tecla lider para la ejecucion de comandos o atajos.
let mapleader=","

" Escriba jj para salir rápidamente del modo de inserción.
inoremap ii <Esc>

" Abrir la configuracion de NVim
nnoremap <Leader>e :e ~/AppData/Local/nvim/init.vim<CR>

" Guardar la sesion actual.
nnoremap <Leader>ss :mksession! ~/AppData/Local/nvim/sessions/session.vim<CR>


" Abrir la sesion guardada.
nnoremap <Leader>so :source ~/AppData/Local/nvim/sessions/session.vim<CR>


" Divide y duplica el archivo en otra ventana.
" De forma Vertical
nnoremap <Leader>vv :vsp<CR>
" De forma Horizontal
noremap <Leader>vh :sp<CR>

" Guardar el archivo
nnoremap <Leader>w :w<CR>

" Cerrar el archivo
nnoremap <Leader>q :q<CR>

" Cerrar el archivo descartando los cambios
nnoremap <Leader>qq :q!<CR>

" Ajustar el tamano de las ventanas
nnoremap <C-right> :vertical resize +5<CR>
nnoremap <C-left>  :vertical resize -5<CR>
nnoremap <C-up>    :resize +5<CR>
nnoremap <C-down>  :resize -5<CR>




" Use el TAB para activar la finalización con los caracteres por delante y navegue 
" NOTA: siempre hay un elemento completo seleccionado de forma predeterminada, es posible que desee habilitar 
" no select by `"suggest.noselect": true` en su archivo de configuración 
" NOTA: Use el comando ':verbose imap <tab>' para asegurarse de que la pestaña no esté asignada por 
" otro complemento antes de poner esto en su configuración
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Atajo para formatear el codigo.
vmap <leader>f  <Plug>(coc-format)
nmap <leader>f  <Plug>(coc-format)

" Asignar el formateador de Prettier.
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument




" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



" Emmet de forma Global
let g:user_emmet_install_global = 0
autocmd FileType html,css,js EmmetInstall

" Abrir el explorador de archivos
nnoremap <silent> <F2> :CocCommand explorer<CR>


