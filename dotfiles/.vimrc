set nocompatible

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" =============================================================================
"                                                                         Color
" =============================================================================

colorscheme molokai
set background=light

" =============================================================================
"                                                                        Format
" =============================================================================

set number
set wrap

set showmatch
set cursorline

if exists("&colorcolumn")
  set colorcolumn=80
endif

" =============================================================================
"                                                                        Indent
" =============================================================================

set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=2

" =============================================================================
"                                                                        Vundle
" =============================================================================

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/rainbow_parentheses.vim'

call vundle#end()
filetype plugin indent on

so ~/.vim/init.vim

" =============================================================================
"                                                                         Remap
" =============================================================================

cnoremap $$ <C-R>=expand('%:h').'/'<cr>
