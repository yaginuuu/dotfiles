augroup HTML
  autocmd!
  autocmd BufNewFile *.html 0r $HOME/.dotfiles/vim/templates/template.html
augroup END

augroup MD
  autocmd!
  autocmd BufNewFile *.md 0r $HOME/.dotfiles/vim/templates/template.md
augroup END

augroup PHP
  autocmd!
  autocmd BufNewFile *.php 0r $HOME/.dotfiles/vim/templates/template.php
augroup END
