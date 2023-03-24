call plug#begin('~/AppData/Local/nvim/plugins') 	"directorio donde se van a instalar los plugins

" Themes
Plug 'joshdick/onedark.vim'

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

call plug#end() 			"cerramos el llamado de los plugins


" Colores*********
" Activa tema onedark.
colorscheme onedark


" Activa el resaltado de syntaxis
syntax on


"Espacios y Tabulaciones*********
" Espacios de la sangría.
set tabstop=2

" Número de espacios en la pestaña al editar.
set softtabstop=2

" Al cmbiar estable esta sangria.
set shiftwidth=2

" Identado de lenguajes
set smartindent


" IU Configuraciones*********
"Muestra los numeros de cada linea en la parte izquierda.
set number

" Habilite el menú de finalización automática después de presionar TAB. 
set wildmenu

" Mostrar comando en la barra inferior.
set showcmd

" Habilite la detección de tipo de archivo. Vim podrá intentar detectar el tipo de archivo en uso.
" Habilite los complementos y cargue el complemento para el tipo de archivo detectado.
" Cargue un archivo de sangría para el tipo de archivo detectado.
filetype plugin indent on

" Redibujar solo cuando sea necesario.
set lazyredraw 

" Permite la interacion con el mouse
set mouse=a

" Acelerar el scrolling en NVim
set ttyfast

" El texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
set wrap

" Mostrar siempre la posición del cursor.
set ruler

" Activa true colors en la terminal.
set termguicolors

" Establece el título de la ventana, reflejando el archivo que se está editando actualmente.
set title

" Resaltar coincidencia [{()}]
set showmatch

" Controla cuándo/cómo mostrar la barra de estado.
set laststatus=2


" Búsqueda*********
" Búsqueda incremental que muestra coincidencias parciales.
set incsearch

" Ignorar mayúsculas y minúsculas al buscar.
set ignorecase

" Cambia automáticamente la búsqueda a mayúsculas y minúsculas cuando la consulta de búsqueda contiene una letra mayúscula.
set smartcase

" Resaltar coincidencias.
set hlsearch


" Plegado*********
" Plegado basado en niveles de sangría.
set foldmethod=indent

" Deshabilita el plegado de forma predeterminada.
set nofoldenable

"Para pelgar codigo de lenguaje de programacion
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



"cuando hagamos split se acomode abajo o arriba
set splitbelow

" Tecla lider para la ejecucion de comandos o atajos.
let mapleader=","

" Abrir/cerrar el explorador de archivos
map <C-b> :NERDTreeToggle<CR>

" Ubircar el archivo arbierto
map <C-f> :NERDTreeFind<CR>


" Escriba jj para salir rápidamente del modo de inserción.
inoremap ii <Esc>

" Abrir la configuracion de NVim.
nnoremap <Leader>e :e ~/AppData/Local/nvim/init.vim<CR>


" Variable para obtener el nombre de la carpeta del proyecto en ejecucion.
let dir="~/AppData/Local/nvim/sessions/"..split(getcwd(),"\\")[-1]..".vim"

"Guardar la sesion actual.
execute 'nnoremap <Leader>ss :mksession!'. dir.'<CR>'

" Abrir la sesion guardada.
execute 'nnoremap <Leader>so :source'..dir..'<CR>'

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


" Cerrar el archivos actual.
nnoremap <leader>c :bd<CR>


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
"inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Atajo para formatear el codigo.
vmap <leader>af  <Plug>(coc-format)
nmap <leader>af  <Plug>(coc-format)


" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Emmet de forma Global
let g:user_emmet_install_global = 0
autocmd FileType html,css,js EmmetInstall

