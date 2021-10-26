call plug#begin('~/.vim/plugged')

	
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'


syntax on
set bg=dark

hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=NONE guifg=#FFFF00
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000


set nu!
set mouse=a
set title
set encoding=utf-8
set completeopt-=preview
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set re=0
set expandtab


map <C-s> :wa<CR>
map <C-w> :q<CR>
map <C-q> :q!<CR>
map <C-n> :tabnext<CR>
map <C-p> :tabprevious<CR>
map <C-z> :undo<CR>
map <C-S-z> :redo<CR>

nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


let g:coc_global_extensions = 
  \	[
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-snippets',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-phpls',
  \ 'coc-sql',
  \ 'coc-python',
  \ 'coc-clangd',
  \ 'coc-diagnostic',
  \	]

let g:airline_theme='deus'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:yats_host_keyword = 1


call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox

