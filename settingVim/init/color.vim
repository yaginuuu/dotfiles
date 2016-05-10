" カラースキーマ
colorscheme molokai
" 構文毎に文字色を変化させる
syntax on
" 行番号の色
" autocmd ColorScheme * highlight LineNr ctermfg=226

" 横方向カーソルを強調
set cursorline
hi CursorLineNr ctermfg=226
" hi clear CursorLine

" 縦方向カーソルを強調
" set cursorcolumn

syntax enable
filetype plugin indent on
