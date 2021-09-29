call plug#begin('~/.vim/plugged')

	
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim'


syntax on
autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark

hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=NONE guifg=#FFFF00
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000


set nu!
set mouse=a
set title
set encoding=utf-8
set completeopt-=preview
set tabstop=4
set shiftwidth=4
set smarttab
set re=0


map <C-s> :wa<CR>
map <C-w> :q<CR>
map <C-q> :q!<CR>
map <C-n> :tabnext<CR>
map <C-p> :tabprevious<CR>

nnoremap <C-z> :undo<CR>
nnoremap <C-S-z> :redo<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


let g:ycm_clangd_args=['--header-insertion=never']
let g:ycm_show_diagnostics_ui = 0

let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp', 'py'],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]

let g:ycm_python_binary_path = 'python'

let g:coc_global_extensions = 
  \	[
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-json',
  \	]

let g:airline_theme='deus'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:yats_host_keyword = 1


call plug#end()
