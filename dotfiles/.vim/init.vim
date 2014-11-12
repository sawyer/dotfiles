let settings = '~/.vim/settings'

for path in split(globpath(settings, '*.vim'), '\n')
  exe 'source' path
endfor
