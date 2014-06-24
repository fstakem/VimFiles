set nocp
call pathogen#infect()
syntax on
filetype plugin indent on
call pathogen#infect()

filetype plugin indent on       "enable detection, plugins and indenting in one step
syntax on                       "Turn on syntax highlighting
set synmaxcol=800

set showcmd                     "show incomplete cmds down the bottom
"set showmode                    "show current mode down the bottom
set showmatch                   "set show matching parenthesis

set virtualedit=all             "allow the cursor to go in to 'invalid' places
 
set incsearch                   "find the next match as we type the search
set hlsearch                    "hilight searches by default
set ignorecase                  "ignore case when searching
set smartcase                   " ... unless they contain at least one capital letter

set shiftwidth=2                "number of spaces to use in each autoindent step
set shiftround                  "when at 3 spaces, and I hit > ... go to 4, not 5
set tabstop=2                   "two tab spaces
set softtabstop=2               "number of spaces to skip or insert when <BS>ing or <Tab>ing
set expandtab                   "spaces instead of tabs for better cross-editor compatibility
set smarttab                    "use shiftwidth and softtabstop to insert or delete (on <BS>) blanks
"set cindent                     "recommended seting for automatic C-style indentation
"set autoindent                  "automatic indentation in non-C files
set nowrap                      "no wrapping
set copyindent                  "copy the previous indentation on autoindenting
set backspace=indent,eol,start  "allow backspacing over everything in insert mode
 
set noerrorbells                "don't make noise

set number                      "Show line numbers

" Quckly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=10
 
" New timeout settings to exit out of insert more quickly
"set timeout timeoutlen=1000 ttimeoutlen=10

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeWinSize = 51
let NERDTreeShowLineNumbers=0
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_open_on_console_startup=0
let NERDTreeShowHidden=1
map <leader>nt :NERDTree<CR>

" Update CTags
map <Leader>ct :!ctags -R --exclude=.git --exclude=log --exclude=.svn --verbose=yes * <CR>
 
" ExCTags window (requires http://ctags.sourceforge.net/)
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left = 1
"autocmd FileType * nested :call tagbar#autoopen()
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_autoclose = 1
 
" open ctag in tab/vertical split
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <leader><C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Tab/shift-tab to indent/outdent in visual mode.
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
" Keep selection when indenting/outdenting.
vnoremap > >gv
vnoremap < <gv

" This allows you to share Vim's clipboard with OS X.
" set clipboard=unnamed
" set clipboard=unnamedplus
 
" Yank to OS X pasteboard. (Need to have this installed and configured per the
" tmux book by Brian Hogan
" https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard.git)
" Only need this if clipboard=unnamed isn't enabled or you aren't on mvim
"noremap <leader>y "*y
 
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

" Mouse support enabled
set mouse+=a
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" Get osx delete to work
" set backspace=indent,eol,start

" Tab movement???
map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
map <C-t> :tabnew<CR>:NERDTree<CR>

" Airline for nice status bar
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" New tab with \ and then return???
nnoremap <leader><CR> :tabe<CR>
