augroup HTML
  autocmd!
  autocmd BufNewFile *.html 0r $HOME/.dotfiles/settingVim/templates/template.html
augroup END

augroup MD
  autocmd!
  autocmd BufNewFile *.md 0r $HOME/.dotfiles/settingVim/templates/template.md
augroup END

augroup PHP
  autocmd!
  autocmd BufNewFile *.php 0r $HOME/.dotfiles/settingVim/templates/template.php
augroup END
