call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'rakr/vim-one'
call plug#end()

set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set smartindent
set showmode
set showcmd
set showmatch
set hlsearch
set wildmenu
set wildmode=longest:list,full
set listchars=trail:
set list
set mouse=

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

set t_Co=256

autocmd BufWritePre * %s/\s\+$//e

set foldmethod=indent
set foldlevel=1
set foldlevelstart=99
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

if $TERM_PROGRAM != 'Apple_Terminal'
    set termguicolors
endif
