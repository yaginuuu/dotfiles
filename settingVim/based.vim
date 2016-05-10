" モードライン設定
set modelines=0
" backspace設定
set backspace=2
" iTerm2で半透明にしているが、vimのcolorschemeを設定すると背景も変更されるため
highlight Normal ctermbg=none
" 行番号表示
set number
" 括弧の対応表示時間
set showmatch matchtime=1
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
" コマンドラインに使われる画面上の行数
set cmdheight=2
" コマンドラインモードで<Tab>キーによるファイル名補完を有効にする
set wildmenu
" 入力中のコマンドを表示する
set showcmd
" 検索結果をハイライト表示する
set hlsearch
" 自動的に閉じカッコを入力してインデント
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>)]}
" pasteモード(,iでもペーストモードへ. ノーマルに戻るとインサートに戻す)
nnoremap ,i :<C-u>set paste<Return>i
autocmd InsertLeave * set nopaste
" マウス操作可能にする
set mouse=a
" マウスでドラッグ動作も可能にする
set ttymouse=xterm2
" クリップボード許可
" => http://qiita.com/Kumamon/items/3ca4ab80fc465d8eed7e
" => http://qiita.com/shoma2da/items/92ea8badcd4655b6106c
set clipboard=unnamed,autoselect
" def...end移動
if !exists('loaded_matchit')
  " matchitを有効化
  runtime macros/matchit.vim
endif
"-----------------------------------------------------------------------------"
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup
"-----------------------------------------------------------------------------"
" Markdown関連
let g:previm_open_cmd = ''
" <F7>でプレビュー
nnoremap <silent> <F7> :PrevimOpen<CR>
"-----------------------------------------------------------------------------"
" ファイルタイプ指定
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.txt set filetype=markdown
" テンプレートファイルを使用しない場合のインデントを調節するため
autocmd BufNewFile,BufRead *.php set filetype=html
"-----------------------------------------------------------------------------"
" タブ関連
" nywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

function! s:my_tabline()
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
endfunction
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
" tx タブを閉じる
map <silent> [Tag]x :tabclose<CR>
" tn 次のタブ
map <silent> [Tag]n :tabnext<CR>
" tp 前のタブ
map <silent> [Tag]p :tabprevious<CR>
" tt 一番右に新規タブを開いてツリーで表示
map <silent> [Tag]t :tablast <bar> tabf .<CR>
"-----------------------------------------------------------------------------"
" NERDTree関連
" 隠しファイルを表示する
let NERDTreeShowHidden = 1
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"-----------------------------------------------------------------------------"
" PHP用
" :makeでPHP構文チェック
au FileType php setlocal makeprg=php\ -l\ %
au FileType php setlocal errorformat=%m\ in\ %f\ on\ line\ %l
" PHPの関数やクラスの折りたたみ(非常に重い）
" let php_folding = 0
" 文字列の中のSQLをハイライト
let php_sql_query = 1
" Baselibメソッドのハイライト
let php_baselib = 1
" HTMLもハイライト
let php_htmlInStrings = 1
" <? を無効にする→ハイライト除外にする
let php_noShortTags = 1
" ] や ) の対応エラーをハイライト
let php_parent_error_close = 1
let php_parent_error_open = 1

" viminfo-fileに保存される内容
set viminfo='20,<50,s10,h,ra:,rb:,%
" viminfoを作成する場所
set viminfo+=n$VIM/.viminfo
