let settings = '~/.vim/settings'

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

for path in split(globpath(settings, '*.vim'), '\n')
  exe 'source' path
endfor

call vundle#end()
filetype plugin indent on
