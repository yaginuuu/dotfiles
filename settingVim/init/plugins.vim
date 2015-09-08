"-----------------------------------------------------------------------------"
set nocompatible

filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" bundle管理ツール
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
NeoBundle 'git://github.com/Shougo/vimproc'
"-----------------------------------------------------------------------------"
" 補完系
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
"-----------------------------------------------------------------------------"
" Markdown
" 編集しているファイルを自動保存するために必要
" NeoBundle 'vim-scripts/vim-auto-save'
" Vim で編集した Markdownファイルをブラウザプレビューするために必要(自動リロード機能付き)
NeoBundle 'kannokanno/previm'
" 連続スクロールを実現するために必要
NeoBundle 'kana/vim-submode'
" ブラウザでプレビューするために必要
NeoBundle 'tyru/open-browser.vim'
"-----------------------------------------------------------------------------"
" ruby & rails
" gfで移動, 元に戻るにはC-o, :A, :R
NeoBundle 'rails.vim'
" Ruby向けにendを自動挿入してくれる
NeoBundle 'tpope/vim-endwise'
"「%」コマンドの強化, 対応するタグ移動
NeoBundle 'matchit.zip'
" コーディングルールチェック
NeoBundle 'scrooloose/syntastic'
let g:syntastic_mode_map = { 'mode': 'passive',
            \ 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']
" Rails版unite
NeoBundle 'https://github.com/basyura/unite-rails.git'
"-----------------------------------------------------------------------------"

NeoBundle 'thinca/vim-quickrun'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Shougo/vimshell'

" ファイルオープンを便利にする
NeoBundle 'Shougo/unite.vim'
" シングルクオートとダブルクオートの入れ替え等
NeoBundle 'tpope/vim-surround'
" ファイルをツリー表示してくれる
NeoBundle 'scrooloose/nerdtree'
" \cでコメントアウトできる
NeoBundle "tyru/caw.vim.git"
nmap <Leader>c <Plug>(caw:i:toggle)
vmap <Leader>c <Plug>(caw:i:toggle)
" 行末に半角スペースがあると色付けしてくれる
"NeoBundle 'https://github.com/bronson/vim-trailing-whitespace'

" ログファイルを色づけしてくれる
NeoBundle 'vim-scripts/AnsiEsc.vim'

" editorconfigをvimで適応させるやつ
NeoBundle 'https://github.com/editorconfig/editorconfig-vim'

" ノーマルモードになったら自動で保存
NeoBundle 'syui/airsave.vim'

" ag
NeoBundle 'rking/ag.vim'

" erbインデントON
NeoBundle 'othree/html5.vim'

" End of NeoBundle
call neobundle#end()

" color
NeoBundle 'tomasr/molokai'

" slim syntax
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'slim-template/vim-slim.git'
syntax enable
filetype plugin indent on

" :Switchでキーワード切り替え
NeoBundle "AndrewRadev/switch.vim"

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
endif

