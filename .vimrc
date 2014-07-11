syntax enable
set background=dark
set t_Co=16
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

" highlight trailing spaces
highlight RedundantSpaces ctermbg=red
match RedundantSpaces /\s\+$\| \+\ze\t\|\t/

set nocompatible
set smartindent
set expandtab
set ffs=unix
set ff=unix
set noswapfile
set noerrorbells
set number
set hid
set smartcase
set showmatch
set autowrite
set autoread
set autoindent
set shiftwidth=4
set tabstop=4
set magic
set wrapscan
set hlsearch
set showmode
set ruler
set showbreak="..."
set laststatus=2
set statusline=%F%m%r%h\ %y\ \ %=%(%l\/%L%)\ %c
set shell=/bin/bash
set viminfo='10,\"100,:20,%,n~/.viminfo
set tw=120
set undofile
set undodir=~/.vim/undodir
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

let g:DoxygenToolkit_authorName="Jeff Perry <jeffsp@gmail.com>"
let g:DoxygenToolkit_licenseTag="Copyright (C) 2014 Center for Perceptual Systems"
let g:DoxygenToolkit_commentType="C++"
let g:DoxygenToolkit_versionString="1.0"

filetype plugin on
compiler! gcc

" unhilight last search
nmap <SPACE> <SPACE>:noh<CR>

" create doxygen comment
noremap <F6> :Dox<CR>
noremap <S-F6> :DoxAuthor<CR>
noremap <C-F6> :DoxLic<CR>

" make
noremap <F7>   :make -j<CR>
noremap <F8>   :make run<CR>

" buffers
noremap <C-l>  :bn<cr> " ctrl-l goes to next buffer
noremap <C-h>  :bp<cr> " ctrl-h goes to previous buffer
noremap <C-n>  :cnext<cr> " ctrl-n goes to next error

" resource .vimrc when it changes
au! BufWritePost .vimrc source %

call togglebg#map("<F5>")

"" Jump to assertion errors when running from make
""set efm^=%*[^\ ]:%f:%l:%m
"
"" Add some new filetypes
"augroup filetype
"    au! BufRead,BufNewFile *.cc set syntax=cpp11
"    au! BufRead,BufNewFile *.py set filetype=python
"    au! BufRead,BufNewFile *.cpp set syntax=cpp11
"    au! BufRead,BufNewFile *.h set syntax=cpp11
"    au! BufRead,BufNewFile *.mg set filetype=matlab
"    au! BufRead,BufNewFile *.mex set filetype=matlab
"    au! BufRead,BufNewFile *.ypp set filetype=yacc
"    au! BufRead,BufNewFile *.pro set filetype=make
"    au! BufRead,BufNewFile COMMIT_* set filetype=gitcommit
"    au! BufRead,BufNewFile wscript set filetype=python
"augroup end
"
