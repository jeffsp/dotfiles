" Reload .vimrc on write
autocmd! bufwritepost .vimrc source %

let g:netrw_list_hide= '*.pyc,*.o$'

" For terminal vim
set title
" Kepp more context when scrolling
set scrolloff=3
" Not compatible with vi
set nocompatible
" Show numbers
set number
" Don't close file when chaning buffers
set hidden
" Flash screen on error
set visualbell
" Use spaces, not tabs
set expandtab
set smarttab
" Make search case-sensitive only if the search contains an uppercase
set ignorecase
set smartcase
" Auto indent
set ai
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Text width
set tw=79
" Autowrite
set aw
"Always show current position
set ruler
" Height of the command bar
set cmdheight=2
" Highlight search results
set hlsearch
" For regular expressions turn magic on
set magic
" Set to auto read when a file is changed from the outside
set autoread
" Show matching brackets when text indicator is over them
set showmatch
" Remember info about open buffers on close
set viminfo^=%
" Set longer history
set history=1000
" Better tab completion
set wildmenu
set wildmode=list:longest
set wildignore=*.o,*~,*.pyc

" Remember undo's across edit sessions (vim 7.3)
set undofile
set undodir=~/.vim/undodir
set undolevels=10000 "maximum number of changes that can be undone
set undoreload=100000 "maximum number lines to save for undo on a buffer reload

syntax enable
syntax on

" Solarize!
set background=dark
set t_Co=256
"let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

call togglebg#map("<F5>")

" Highlight trailing spaces and tabs
"highlight ExtraWhitespace ctermbg=red guibg=red
"match ExtraWhitespace /\s\+$/
"highlight Tabs ctermbg=yellow guibg=yellow
"2match Tabs /\t/
highlight RedundantSpaces ctermbg=red
match RedundantSpaces /\s\+$\| \+\ze\t\|\t/

filetype indent plugin on

" Make the status line more informative
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

set laststatus=2

" Next buffer
noremap <C-L> :bnext<cr>

" Previous buffer
noremap <C-H> :bprevious<cr>

" Turn off search highlights
noremap <space> :noh<cr>

" Run make, '!' prevents from jumping to the first error
noremap <F7> :make<cr>

" Go to next error
noremap <C-N> :cnext<cr>

" Jump to line and column on '
nnoremap ' `
nnoremap ` '

" Set the leader
let mapleader = ","

" Better matching
runtime macros/matchit.vim
