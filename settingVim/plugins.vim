" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" プラグインリストを収めた TOML ファイル
let s:toml      = '~/.vim/rc/dein.toml'
" let s:lazy_toml = '~/.vim/rc/dein_lazy.toml'

" TOML を読み込み、キャッシュしておく
if dein#load_state(s:dein_dir)
  " 設定開始
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml)
  call dein#end()
  call dein#save_state()
endif

" vimprocだけは最初にインストール
if dein#check_install(['vimproc'])
  call dein#install(['vimproc'])
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif
