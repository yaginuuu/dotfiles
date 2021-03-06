augroup filetypedetect
  " TODO: tplファイルのインデントを適応させたい
  autocmd BufRead,BufNewFile *.c setfiletype c
  autocmd BufRead,BufNewFile *.rb setfiletype ruby
  autocmd BufRead,BufNewFile *.puml setfiletype plantuml
  autocmd BufRead,BufNewFile *.pu setfiletype plantuml
  autocmd BufNewFile,BufRead *.erb set noexpandtab tabstop=2 shiftwidth=2
  autocmd BufNewFile,BufRead *.scss set expandtab tabstop=2 shiftwidth=2
  " autocmd BufNewFile,BufRead *.php set noexpandtab tabstop=4 shiftwidth=4
  au BufRead,BufNewFile *.tpl set filetype=html

  autocmd BufNewFile,BufRead *.tpl set expandtab tabstop=2 shiftwidth=2
augroup END
