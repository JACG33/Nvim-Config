call plug#begin('~/AppData/Local/nvim/plugins') 	"directorio donde se van a instalar los plugins

"plugins

" Themes
Plug 'joshdick/onedark.vim' 		      "Tema

" Emmet
Plug 'mattn/emmet-vim' 			          "Emmet para diseño web

"Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'   "para poner icono a direcotiro

" Arbol de Directorios
Plug 'scrooloose/nerdtree'		        "Gestor de archivos en forma de arbol.

"Tmux
Plug 'yazgoo/vmux'
Plug 'christoomey/vim-tmux-navigator'	"Poder navegar entre archivos abiertos

"Autocomplementado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"TERMINAL
Plug 'erietz/vim-terminator', { 'branch': 'main'} "ejecutar codigo de lenguajes de programacion

"IDE
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'  "buscar una palabra en nuestra pagina actual <leader>s +(letra)
Plug 'Yggdroot/indentLine'              "indentacion
Plug 'scrooloose/nerdcommenter' "comentarios
Plug 'jiangmiao/auto-pairs'             "autocompletado de llaves, corchetes, etc
Plug 'osyo-manga/vim-over' "OverCommandLine%s/ ENTER palabra/
Plug 'tpope/vim-surround'  "Para envolver una palabra en un signo, corchete, parentesis
"Para poder envolver una palabra /// ysiw + signo
"Para cambiar de signo 'hello world' a un <p>hello world</p> /// digitamos cs'<q>
"Para eliminar un delimitador digitamos ds' /// 'hello' -> hello
"Para dar iconos a nuestros nvim
"Para reemplazar alguna palabra,  :%s/palbra antigua/palabra nueva
Plug 'tmhedberg/simpylfold' "plegado de codigo
Plug 'vim-scripts/TaskList.vim'
"todoshow para vim, todo,fixme en mayuscula
"funciona con <leader> t  #salir q, mantener ventana y volver a pantalla e

"Sintax
Plug 'sheerun/vim-polyglot' "resalta de color los lenguajes de progra
Plug 'lilydjwg/colorizer' "Color hexadecimal en css, pinta
Plug 'KabbAmine/vCoolor.vim'   "insertar color, alt +c, atl + r; alt + v
Plug 'valloric/matchtagalways' " Para sombrear etiquetas de inicio y de salida
Plug 'sbdchd/neoformat'  "prettier javascript


" Comentarios
"Plug 'terrortylor/nvim-comment'       " Toggle Comentarios

" Busqueda
Plug 'junegunn/fzf.vim'  "busquedas de archivos, lines
Plug 'junegunn/fzf'
Plug 'voldikss/vim-floaterm' "TERMINAL

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
"set noshowmode				    "Me deja de mostrar el modo en el que estamos 'normal, insert, visual, etc'


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


set noerrorbells
set sw=2 sts=2
set smartindent
set rnu
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
"set foldmethod=indent
set nofoldenable        "dont fold by default


" Nerdtree *********
" Abrir/cerrar NERDTree con F2
map <C-b> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>

" Tecla lider para la ejecucion de comandos o atajos.
let mapleader=","

" Escriba jj para salir rápidamente del modo de inserción.
inoremap jj <Esc>



" Divide y duplica el archivo en otra ventana.
" De forma Vertical
nnoremap <Leader>vs :vsp<CR>
" De forma Horizontaln
noremap <Leader>sp :sp<CR>

" Puede dividir una ventana en secciones escribiendo `:split` o `:vsplit`. 
" Muestra la línea del cursor y la columna del cursor SOLAMENTE en la ventana activa.

augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END
