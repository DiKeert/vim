execute pathogen#infect()

syntax enable
syntax on
filetype plugin indent on
set background=dark
colorscheme solarized
set nu


" indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" conver tabs to spaces before reading file
autocmd! bufreadpost * set expandtab | retab! 4


" vertical line indentation
let g:indentLine_char = '│'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

" Ignore these directories
set wildignore+=*/target/**

set completeopt=longest,menuone

" Supertab config
let g:SuperTabDefaultCompletionType = "context"

" CtrlP config:
let g:ctrlp_by_filename = 0

set backspace=indent,eol,start


" Bindings
map <F12> :ProjectTreeToggle<cr>
imap <F12> <Esc>:ProjectTreeToggle<cr>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> j pumvisible() ? "\<C-n>" : "j"
inoremap <expr> k pumvisible() ? "\<C-p>" : "p"
inoremap <Nul> <C-x><C-u>

