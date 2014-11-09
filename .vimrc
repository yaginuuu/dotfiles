
" yaginuuu's .vimrc
"-----------------------------------------------------------------------------"
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup
source ~/.vimrc.bundle
"-----------------------------------------------------------------------------"

" latex関連
" let tex_flavor='latex'
" set grepprg=grep\ -nH\ $*
" set shellslash
" let g:Tex_DefaultTargetFormat='pdf'
" let g:Tex_CompileRule_dvi='platex --interaction=nonstopmode $*'
" let g:Tex_FormatDependency_pdf='dvi,pdf'
" PDFはPreview.appで開く
" let g:Tex_ViewRule_pdf='open -a Preview.app

"-----------------------------------------------------------------------------"

" Markdown関連
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
" tt 一番右に新規タブを開いてツリーで表示
map <silent> [Tag]t :tablast <bar> tabf .<CR>

"-----------------------------------------------------------------------------"

" NERDTree関連
" 隠しファイルを表示する
let NERDTreeShowHidden = 1

"-----------------------------------------------------------------------------"

" インデント関連
set autoindent   " 自動でインデント
set smartindent  " 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする。
set cindent      " Cプログラムファイルの自動インデントを始める

if has("autocmd")
    filetype plugin on
    filetype indent on

    autocmd FileType apache     setlocal sw=4 sts=4 ts=4 et
    autocmd FileType aspvbs     setlocal sw=4 sts=4 ts=4 et
    autocmd FileType c          setlocal sw=4 sts=4 ts=4 et
    autocmd FileType cpp        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType cs         setlocal sw=4 sts=4 ts=4 et
    autocmd FileType css        setlocal sw=2 sts=2 ts=2 et
    autocmd FileType diff       setlocal sw=4 sts=4 ts=4 et
    autocmd FileType eruby      setlocal sw=2 sts=2 ts=2 et
    autocmd FileType html       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType java       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType javascript setlocal sw=2 sts=2 ts=2 et
    autocmd FileType perl       setlocal sw=4 sts=4 ts=4 et
    autocmd FileType php        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType python     setlocal sw=4 sts=4 ts=4 et
    autocmd FileType ruby       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType haml       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType sh         setlocal sw=4 sts=4 ts=4 et
    autocmd FileType sql        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType vb         setlocal sw=4 sts=4 ts=4 et
    autocmd FileType vim        setlocal sw=2 sts=2 ts=2 et
    autocmd FileType wsh        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType xhtml      setlocal sw=4 sts=4 ts=4 et
    autocmd FileType xml        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType yaml       setlocal sw=2 sts=2 ts=2 et
    autocmd FileType zsh        setlocal sw=4 sts=4 ts=4 et
    autocmd FileType scala      setlocal sw=2 sts=2 ts=2 et
    autocmd FileType go         setlocal sw=2 sts=2 ts=2 noexpandtab list
endif

"-----------------------------------------------------------------------------"

" テンプレート集
augroup HTML
  autocmd!
  autocmd BufNewFile *.html 0r $HOME/.templates/template.html
augroup END

augroup MD
  autocmd!
  autocmd BufNewFile *.md 0r $HOME/.templates/template.md
augroup END

"-----------------------------------------------------------------------------"

" surroud.vim 関連
" surroud.vimがインスコされているのが前提
" <C-g>s の後に以下のキーで保管できる
" [key map]
" 1 : <h1>|</h1>
" 2 : <h2>|</h2>
" 3 : <h3>|</h3>
" 4 : <h4>|</h4>
" 5 : <h5>|</h5>
" 6 : <h6>|</h6>
"
" p : <p>|</p>
" u : <ul>|</ul>
" o : <ol>|</ol>
" l : <li>|</li>
" a : <a href="">|</a>
" A : <a href="|"></a>
" i : <img src="|" alt="" />
" I : <img src="" alt"|" />
" d : <div>|</div>
" D : <div class="section">|</div>

let b:surround_49  = "<h1>\r</h1>"
let b:surround_50  = "<h2>\r</h2>"
let b:surround_51  = "<h3>\r</h3>"
let b:surround_52  = "<h4>\r</h4>"
let b:surround_53  = "<h5>\r</h5>"
let b:surround_54  = "<h6>\r</h6>"

let b:surround_112 = "<p>\r</p>"
let b:surround_117 = "<ul>\r</ul>"
let b:surround_111 = "<ol>\r</ol>"
let b:surround_108 = "<li>\r</li>"
let b:surround_97  = "<a href=\"\">\r</a>"
let b:surround_65  = "<a href=\"\r\"></a>"
let b:surround_105 = "<img src=\"\r\" alt=\"\" />"
let b:surround_73  = "<img src=\"\" alt=\"\r\" />"
let b:surround_100 = "<div>\r</div>"
let b:surround_68  = "<div class=\"section\">\r</div>"
let g:surround_{char2nr("=")} = "<% \r %>"
let g:surround_{char2nr("-")} = "<%= \r %>"

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
" 検索結果をハイライト表示する
set hlsearch
" 自動的に閉じカッコを入力してインデント
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>))]]}}
" pasteモード(,iでもペーストモードへ. ノーマルに戻るとインサートに戻す)
nnoremap ,i :<C-u>set paste<Return>i
autocmd InsertLeave * set nopaste
