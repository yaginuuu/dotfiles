" yaginuuu's .vimrc

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup
source ~/.vimrc.bundle
"-----------------------------------------------------------"
"カラースキーマ
colorscheme molokai
" 構文毎に文字色を変化させる
syntax on
" erbファイルをrubyファイルとして認識する
autocmd BufNewFile,BufRead *.erb set filetype=ruby
"pluginを使用可能にする
filetype plugin indent on
"行番号表示
set number
"括弧の対応表示時間
set showmatch matchtime=1
"タブを設定"
set ts=2 sw=2 sts=2
"自動的にインデントする
set autoindent
"タブ入力がスペースに変換される
set expandtab
"タイトルを表示
set title
"Tab、行末の半角スペースを明示的に表示する
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set noswapfile
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" 行番号の色
highlight LineNr ctermfg=yellow
" 自動的に閉じカッコを入力
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>
"検索結果をハイライト表示する
set hlsearch

" latex仕様
" let tex_flavor='latex'
" set grepprg=grep\ -nH\ $*
" set shellslash
" let g:Tex_DefaultTargetFormat='pdf'
" let g:Tex_CompileRule_dvi='platex --interaction=nonstopmode $*'
" let g:Tex_FormatDependency_pdf='dvi,pdf'

" PDFはPreview.appで開く
" let g:Tex_ViewRule_pdf='open -a Preview.app

" md仕様
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.txt set filetype=markdown
