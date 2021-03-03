" set leader key
"let g:mapleader = "\<Space>"
let g:mapleader = ";"

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Alternate way to save
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" Change window layout
nnoremap <leader>h <C-w>H       " move the current window to the far left (using full height)
nnoremap <leader>j <C-w>J       " move the current window to be at the very bottom (using full width)
nnoremap <leader>k <C-w>K       " move the current window to be at the very top (using full width)
nnoremap <leader>l <C-w>L       " move the current window to the far right (using full height)

" Duplicate line
nnoremap <leader>d yyp

" navigate tab
nnoremap gh gT
nnoremap gl gt

" toggle NERDTree
nnoremap BB :NERDTreeToggle<Enter>

" Overwrite permission protected file with sudo privilege
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> editmap w!! w !sudo tee %!

" Comment up a line
nnoremap <C-_> 0i# <Esc>
inoremap <C-_> <Esc>0i# <Esc>

" Move a single line up/down
nnoremap <C-Up> ddkP
nnoremap <C-Down> ddp

" Remap undo & redo
nnoremap <C-Z> u
inoremap <C-Z> <C-O>u

" Reload config file
nnoremap <leader>sc :source ~/.config/nvim/init.vim<CR>
