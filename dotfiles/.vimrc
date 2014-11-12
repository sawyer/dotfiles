if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

colorscheme molokai
set background=light

set nocompatible

set number
set wrap

set showmatch
set cursorline

set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

nnoremap <leader>b :Gblame<CR>
