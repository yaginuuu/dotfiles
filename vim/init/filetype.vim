augroup filetypedetect
  au BufRead,BufNewFile *.c setfiletype c
  au BufRead,BufNewFile *.rb setfiletype ruby
augroup END

au BufNewFile,BufRead *.erb set noexpandtab tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.scss set expandtab tabstop=2 shiftwidth=2
