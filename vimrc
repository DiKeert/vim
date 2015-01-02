set nocompatible
if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif
"shut the fuck up!
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
call vundle#end() 
filetype plugin indent on

let &colorcolumn=join(range(81,999),",")

syntax enable
syntax on
set background=light
colorscheme solarized
set nu
set hidden

" indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set backspace=indent,eol,start

" Ignore these directories
set wildignore+=*/target/**

" CtrlP config:
let g:ctrlp_by_filename = 0

"NERDTree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | wincmd z | wincmd . | endif

" Bindings
inoremap <Nul> <C-x><C-u>

set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',ё\\\\,яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж\\:,Э\\",Ё\\|,ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б\\<,Ю\\>

