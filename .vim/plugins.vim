" プラグインが実際にインストールされるディレクトリを指定
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vimがなければgithubからインスコ
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" プラグインリストを収めたtomlファイル
let s:toml      = '~/.vim/dein.toml'

call dein#begin(s:dein_dir)
call dein#load_toml(s:toml)
call dein#end()
call dein#save_state()

" もし, 未インストールのプラグインが存在したらインストールを実施
if dein#check_install()
  call dein#install()
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
endif

