runtime! ftplugin/man.vim

syntax on

" Use tabs for indentation.
" Indentation is also a bit smart.
set noexpandtab
set tabstop=4
set shiftwidth=4
set smartcase
set smartindent
set autoindent
set copyindent

" Enable persistent undo tree
set undofile
set undodir=$HOME/.vim/undo

set number
set relativenumber
set wrap
set mouse=a
set laststatus=3
set fileencoding=utf-8
set noswapfile
set wildmenu
set nobackup
set hlsearch
set hidden
set incsearch
set ignorecase
set splitbelow
set splitright
set timeoutlen=1000
set cursorline
set colorcolumn=72,80,120
set scrolloff=10
set clipboard=unnamedplus
