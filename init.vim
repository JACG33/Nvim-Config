so ~/AppData/Local/nvim/nvim_configs/plugins_conf.vim
so ~/AppData/Local/nvim/nvim_configs/maps_conf.vim
so ~/AppData/Local/nvim/nvim_functions/functions.vim
so ~/AppData/Local/nvim/nvim_configs/coc_conf.vim

" *********Colores*********

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

" Mostrar comando en la barra inferior.
set showcmd

" 
set hidden

" Identacion
let g:indent_blankline_char = '▏'
let g:show_trailing_blankline_indent="false"


if (has("termguicolors"))
    set termguicolors 	" Enables 24-bit RGB color in the terminal if its available
endif

" https://shapeshed.com/vim-netrw/
" https://vonheikemen.github.io/devlog/es/tools/using-netrw-vim-builtin-file-explorer/
" Vista en formato de arbol.
let g:netrw_liststyle = 3

" Abrir en ventana anterior.
"let g:netrw_browse_split = 4

" Establecer el ancho del explorador de directorios.
let g:netrw_winsize = 25


" Habilite la detección de tipo de archivo. Vim podrá intentar detectar el tipo de archivo en uso.
" Habilite los complementos y cargue el complemento para el tipo de archivo detectado.
" Cargue un archivo de sangría para el tipo de archivo detectado.
filetype plugin indent on

" Redibujar solo cuando sea necesario.
"set lazyredraw 

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

" Activa tema onedark.
colorscheme codedark
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
set updatetime=200

" No realizar copias de seguridad.
set nobackup
set nowritebackup

