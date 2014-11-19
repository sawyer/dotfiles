let plugins = "~/.vim/vundle"

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

for plugin in split(globpath(plugins, "*.vim"), "\n")
  exe "source" plugin
endfor

call vundle#end()
filetype plugin indent on
