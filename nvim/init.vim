call plug#begin('~/.config/nvim/plugged')

    " Add git command
    Plug 'tpope/vim-fugitive' 
    " Beautiful startpage
    Plug 'mhinz/vim-startify' 
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs' 
    " Better syntax support
    Plug 'sheerun/vim-polyglot' 
    " File explorer
    Plug 'scrooloose/NERDTree' 
    " Smooth scrolling
    Plug 'yuttie/comfortable-motion.vim'
    " Git file changes sign
    Plug 'mhinz/vim-signify'
    " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Golang support
    " Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }    

call plug#end()

" General Settings -------------------------------- 

" set leader key
let g:mapleader = "\<Space>"

syntax enable			        " Enables syntax highlighing
set number		  	            " Line number
set hlsearch			        " Highlight search result
set incsearch			        " Display matches for a search pattern while you type.
set mouse=a	  		            " Enable mouse
set scrolloff=5 		        " Keep 3 lines below and above the cursor
set nowrap			            " No word wrapping
set clipboard+=unnamedplus	    " Enable system clipboard
set splitright			        " Default vertical split to the right
set splitbelow			        " Default horizontal split to the bottom
set pumheight=10		        " Pop up menu height
set ruler			            " Underline
set showcmd		                " Underline
"set cmdheight=2			        " More space for displaying message
set t_Co=256			        " Support 256 colors
set tabstop=4			        " Insert 2 spaces for a tab
set shiftwidth=4		        " Change the number of space characters inserted for indentation
set smarttab			        " Makes tabbing smarter will realize you have 2 vs 4
set expandtab			        " Converts tabs to spaces
set smartindent			        " Make indenting smart
set autoindent			        " Make auto indent
set background=dark		        " Tell vim what background color looks like
set showtabline=2		        " Always show tabs
set ignorecase                  " Case insensitive search
"set cursorline                  " Set cursorline
set updatetime=100              " Set shorter update time for vim-signify faster update
set termguicolors               " color support

" Recorded macro
let @p='42gg$r3:q€kbw'
let @q='42gg$r1:q€kbw'

source $HOME/.config/nvim/keymapping.vim

source $HOME/.config/nvim/startifyconf.vim


"let g:startify_lists = [
"            \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
"            \ { 'type': 'files',     'header': ['   MRU']            },
"            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
"            \ { 'type': 'sessions',  'header': ['   Sessions']       },
"            \ { 'type': 'commands',  'header': ['   Commands']       },
"        \]

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

