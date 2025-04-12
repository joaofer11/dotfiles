" Options
set nonumber
set norelativenumber
set wrap
set textwidth=80
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nosmartindent
set autoindent
set copyindent
set expandtab
set softtabstop=4
set shiftwidth=4
set scrolljump=-50
set clipboard=unnamedplus
set mouse=a
set guicursor=""
set fileencoding="utf-8"
set formatoptions=tcqrow
set wildmenu
set showcmd

set nobackup
set noswapfile
set undofile
set undodir^=~/dotfiles/.vim/.undo//

" Keymaps
let mapleader=" "
let maplocalleader=" "
noremap <F2> <cmd>source $HOME/dotfiles/.vimrc<cr>

nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>e :bd<cr>
nnoremap <leader>b :ls<cr>:b
xnoremap <leader>p "_dP

inoremap fj <ESC>
inoremap FJ <ESC>
cnoremap fj <ESC>
cnoremap FJ <ESC>
xnoremap fj <ESC>
xnoremap FJ <ESC>

" Stay in visual mode after indenting
xnoremap < <gv
xnoremap > >gv

" Easy window resize
nnoremap <C-k> 2<C-w>+
nnoremap <C-j> 2<C-w>-
nnoremap <C-h> 2<C-w><
nnoremap <C-l> 2<C-w>>

" Before saving the buf, remove any trailing whitespace for each line in buf
autocmd BufWritePre * %s/\s\+$//e

" Plugins
call plug#begin('~/dotfiles/.vim/plugged')
    Plug 'tpope/vim-unimpaired'
    Plug 'justinmk/vim-sneak'
    Plug 'altercation/vim-colors-solarized'

    let g:sneak#label=1
    let g:sneak#use_ic_scs=1
    map s <Plug>Sneak_s
    map S <Plug>Sneak_S
    map f <Plug>Sneak_f
    map F <Plug>Sneak_F
call plug#end()

syntax enable
set background=dark
colorscheme solarized
