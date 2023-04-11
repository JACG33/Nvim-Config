call plug#begin('~/AppData/Local/nvim/plugins') 	"directorio donde se van a instalar los plugins

" Themes
Plug 'tomasiser/vim-code-dark'

"Status Bar
Plug 'vim-airline/vim-airline'

"Tmux
Plug 'christoomey/vim-tmux-navigator'	" Poder navegar entre las ventanas al estar divididas

"Autocomplementado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"IDE
"Comentarios
Plug 'scrooloose/nerdcommenter'
"Autocompletado de llaves, corchetes, etc
Plug 'jiangmiao/auto-pairs'
"Para envolver una palabra en un signo, corchete, parentesis
Plug 'tpope/vim-surround'
"Indentacion
Plug 'lukas-reineke/indent-blankline.nvim'

"Sintax
Plug 'lilydjwg/colorizer' "Color hexadecimal en css, pinta
Plug 'sheerun/vim-polyglot' "Coloreado de los lenguajes. 

call plug#end() 
