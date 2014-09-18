
" yaginuuu's .vimrc
"-----------------------------------------------------------------------------"
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup
source ~/.vimrc.bundle
"-----------------------------------------------------------------------------"
" latex仕様
" let tex_flavor='latex'
" set grepprg=grep\ -nH\ $*
" set shellslash
" let g:Tex_DefaultTargetFormat='pdf'
" let g:Tex_CompileRule_dvi='platex --interaction=nonstopmode $*'
" let g:Tex_FormatDependency_pdf='dvi,pdf'
" PDFはPreview.appで開く
" let g:Tex_ViewRule_pdf='open -a Preview.app
"-----------------------------------------------------------------------------"
" Markdown仕様
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.txt set filetype=markdown
" Markdown Preview
let g:previm_open_cmd = ''
" <F7>でプレビュー
nnoremap <silent> <F7> :PrevimOpen<CR>
" [,]+j+j+j...で下にスクロール、[,]+k+k+k...で上にスクロール
nnoremap <silent> <Leader>j :ChromeScrollDown<CR>
nnoremap <silent> <Leader>k :ChromeScrollUp<CR>
call submode#enter_with('cscroll', 'n', '', '<Leader>j', ':ChromeScrollDown<CR>')
call submode#enter_with('cscroll', 'n', '', '<Leader>k', ':ChromeScrollUp<CR>')
call submode#leave_with('cscroll', 'n', '', 'n')
call submode#map('cscroll', 'n', '', 'j', ':ChromeScrollDown<CR>')
call submode#map('cscroll', 'n', '', 'k', ':ChromeScrollUp<CR>')

" 現在のタブを閉じる
nnoremap <silent> <Leader>q :ChromeTabClose<CR>
" [,]+f+{char}でキーを Google Chrome に送る
nnoremap <buffer> <Leader>f :ChromeKey<Space>
"-----------------------------------------------------------------------------"
" タブ関連
" nywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

function! s:my_tabline()  "{{{
  let s = ''
  for i in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(i)
    let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
    let no = i  " display 0-origin tabpagenr.
    let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
    let title = fnamemodify(bufname(bufnr), ':t')
    let title = '[' . title . ']'
    let s .= '%'.i.'T'
    let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let s .= no . ':' . title
    let s .= mod
    let s .= '%#TabLineFill# '
  endfor
  let s .= '%#TabLineFill#%T%=%#TabLine#'
  return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
" 常にタブラインを表示
set showtabline=2
" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" tc 新しいタブを一番右に作る
map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tx タブを閉じる
map <silent> [Tag]x :tabclose<CR>
" tn 次のタブ
map <silent> [Tag]n :tabnext<CR>
" tp 前のタブ
map <silent> [Tag]p :tabprevious<CR>
" tt 新規タブを開いてツリーで表示
map <silent> [Tag]t :tablast <bar> tabf .<CR>
"-----------------------------------------------------------------------------"
" NERDTree関連
" 隠しファイルを表示する
let NERDTreeShowHidden = 1
"-----------------------------------------------------------------------------"

" モードライン設定
set modelines=0
" backspace設定
set backspace=2
" カラースキーマ
colorscheme molokai
" 構文毎に文字色を変化させる
syntax on
" 行番号表示
set number
" 括弧の対応表示時間
set showmatch matchtime=1
" タブを設定"
set ts=2 sw=2 sts=2
" 自動的にインデントする
set autoindent
" タブ入力がスペースに変換される
set expandtab
" タイトルを表示
set title
" Tab、行末の半角スペースを明示的に表示する
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
" スワップファイルは使わない(ときどき面倒な警告が出るだけで役に立ったことがない)
set noswapfile
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" 行番号の色
highlight LineNr ctermfg=yellow
" コマンドラインに使われる画面上の行数
set cmdheight=2
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 入力中のコマンドを表示する
set showcmd
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" 検索結果をハイライト表示する
set hlsearch
" 自動的に閉じカッコを入力
" imap { {}<LEFT>
" imap [ []<LEFT>
" imap ( ()<LEFT>

