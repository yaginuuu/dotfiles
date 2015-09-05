augroup HTML
  autocmd!
  autocmd BufNewFile *.html 0r $HOME/settingVim/templates/template.html
augroup END

augroup MD
  autocmd!
  autocmd BufNewFile *.md 0r $HOME/settingVim/templates/template.md
augroup END
