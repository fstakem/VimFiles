execute pathogen#infect()
syntax on
filetype plugin indent on

set t_Co=256

autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1
map <leader>nt :NERDTree<CR>

map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
map <C-t> :tabnew<CR>:NERDTree<CR>

let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

nnoremap <leader><CR> :tabe<CR>




