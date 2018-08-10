call plug#begin('~/.vim/plugged')
Plug 'https://github.com/Shougo/neocomplete.vim'
Plug 'https://github.com/vim-scripts/Mark--Karkat'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/brookhong/cscope.vim'
Plug 'https://github.com/mkitt/tabline.vim'
call plug#end()

"let g:jedi#completions_command = "<C-N>"

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set backspace=indent,eol,start
set nocompatible
set number
"set autochdir
set showmatch
set showcmd
set ruler
set autoindent

filetype plugin indent on
set tabstop=4
set softtabstop=4
set cursorline  
set shiftwidth=4
"set expandtab

syntax enable
set t_Co=256
colorscheme desert
"colorscheme molokai
set synmaxcol=512
set background=dark

set shell=bash
set mouse=a


set wildmenu
set wildmode=longest:full,full

".md 
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

"neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" " Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" " Use smartcase.
let g:neocomplete#enable_smart_case = 1
" " Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
"
"
"
let g:ycm_python_binary_path = '/usr/bin/python3'
"
"
"cscope
let g:cscope_silent = 1
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>


" :w!! 
" " write the file when you accidentally opened it without the right (root)
" privileges
cmap w!! w !sudo tee % > /dev/null
