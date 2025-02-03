call plug#begin()
	Plug 'tpope/vim-fugitive'
	Plug 'tpope/vim-vinegar'

	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	Plug 'easymotion/vim-easymotion'
	Plug 'haya14busa/incsearch.vim'
call plug#end()

map s  <Plug>(easymotion-s2)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>g :Git<cr>
