let g:mapleader=" "
let g:maplocalleader=" "

noremap - :Explore<cr>

noremap <F2> :source ~/.vimrc<cr>

inoremap fj <ESC>
vnoremap fj <ESC>

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>l :nohlsearch<cr>
vnoremap <leader>d "_d
vnoremap <leader>p "_p

vnoremap < <gv
vnoremap > >gv
vnoremap J :move '>+1<cr>gv=gv
vnoremap K :move '<-2<cr>gv=gv

nnoremap <silent> H :bp<cr>
nnoremap <silent> L :bn<cr>

nmap <silent> <C-k> :resize +2<cr>
nmap <silent> <C-j> :resize -2<cr>
nmap <silent> <C-h> :vertical resize +2<cr>
nmap <silent> <C-l> :vertical resize -2<cr>
