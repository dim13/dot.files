set autoindent
set autoread
set ruler
set showmode
set showmatch
set guioptions-=T
set guioptions-=r
set guioptions-=L
set guioptions-=m
set guifont=monofur
set cm=blowfish
set nu

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'maralla/completor.vim'
Plug 'dim13/xedit.vim'
Plug 'dim13/smyck.vim'
call plug#end()
"
colorscheme smyck
"colorscheme acme
"colorscheme xedit
syntax on
"hi clear VertSplit

let g:go_fmt_command = 'goimports'
let g:go_build_tags = 'integration'
let g:completor_gocode_binary = 'gocode'

nnoremap <Tab>   <c-w>w
nnoremap <S-Tab> <c-w>W

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>"      : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>"      : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
