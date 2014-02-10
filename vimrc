if $VIM_CRONTAB == "true"
    set nobackup
    set nowritebackup
endif


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

" CtrlP config:
let g:ctrlp_by_filename = 0

set backspace=indent,eol,start


" eclim
let g:EclimProjectTabTreeAutoOpen = 0
let g:EclimProjectTreeAutoOpen = 1
let g:EclimProjectTreeExpandPathOnOpen = 1


" Bindings
map <F12> :ProjectTreeToggle<cr>
imap <F12> <Esc>:ProjectTreeToggle<cr>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> j pumvisible() ? "\<C-n>" : "j"
inoremap <expr> k pumvisible() ? "\<C-p>" : "k"
inoremap <Nul> <C-x><C-u>

set langmap=йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,ж\\;,э',ё\\\\,яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.ЙQ,ЦW,УE,КR,ЕT,НY,ГU,ШI,ЩO,ЗP,Х{,Ъ},ФA,ЫS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж\\:,Э\\",Ё\\|,ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б\\<,Ю\\>
