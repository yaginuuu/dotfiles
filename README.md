# Install
```
$ git clone https://github.com/yaginuuu/.dotfiles.git
$ sudo sh .dotfile/setup.sh
```

# Usage
## sh
- alias  
```
alias tree="tree -NC"
alias sed="gsed"
alias awk="gawk"
alias kill_tmux="tmux kill-server"
alias dotfiles="cd ~/.dotfiles; vim"
alias desctop="cd ~/Desktop; vim"
alias vi='(){
if [ $# = 0 ]; then
    vim
elif [ $1 = '.' ]; then
    vim
elif [ -e $1 ]; then
    cd $1; vim $1
else
    vim
fi
}'
```
- git alias
```
git l # いい感じにグラフ化
git s # 行単位ではなく単語単位での差分を表示
```

## peco
- C-rで起動

## vim
- ss: 水平分割でひらく
- sv: 垂直分割でひらく
- R : NERDTreeをリフレッシュする

### タブ系
```
tx : タブを閉じる
gt : 次のタブ
gT : 前のタブ
tj : 一番右に新規タブを開く
```
### NERDTree
```
C-e: NERDTreeTagsToggle
b  : ブックマークする
D  : ブックマークを消す
```

### emmet
  - <Emmet式><C-y> , で展開
  - !: htmlの雛形  
    http://motw.mods.jp/Vim/emmet-vim.html
  - ・<C-k>で次を記述
- surround.vim系
  - シングルクオートとダブルクオートの入れ替え等
    - 'を"に変更        : cs'"
    - 行全体を囲む      : yss'
    - 選択した範囲を囲む: 選択後S'
    - 削除              : ds
    - 単語を囲む        : ysiw
  - インサートモードで<C-g>sのあとに以下で展開
```
1: <h1>|</h1>
2: <h2>|</h2>
3: <h3>|</h3>
4: <h4>|</h4>
5: <h5>|</h5>
6: <h6>|</h6>
p: <p>|</p>
u: <ul>|</ul>
o: <ol>|</ol>
l: <li>|</li>
a: <a href="">|</a>
A: <a href="|"></a>
i: <img src="|" alt="" />
I: <img src="" alt"|" />
d: <div>|</div>
D: <div class="section">|</div>
```

### unite.vim
```
<Leader> = <C-g>
  nmap     <Leader>f [unite]
  nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
  nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
  nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
  nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
  nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>
  nnoremap <silent> ,e  :<C-u>Unite file_rec/async:!<CR>
```

### Unite-rails.vim
```
noremap rc :<C-u>Unite rails/controller<CR>
noremap rm :<C-u>Unite rails/model<CR>
noremap rv :<C-u>Unite rails/view<CR>
noremap rh :<C-u>Unite rails/helper<CR>
noremap rs :<C-u>Unite rails/stylesheet<CR>
noremap rj :<C-u>Unite rails/javascript<CR>
noremap rr :<C-u>Unite rails/route<CR>
noremap rg :<C-u>Unite rails/gemfile<CR>
noremap rt :<C-u>Unite rails/spec<CR>
```

### vim_rails
- gfで移動, 元に戻るにはC-o, :A, :R


## ToDo
- TODO: 自作スニペットを作成したい
- BUG : vimでファイルを開くときに予測変換で出現しない(cdできないからだと思われる)
