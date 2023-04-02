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