# rbenv
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH=$PATH:/usr/local/mysql/bin

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

# sshで接続した先で日本語が使えるようにする
export TERM=xterm-256color
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# エディタ設定
export EDITOR=/usr/local/bin/vim

export PAGER=/usr/local/bin/vimpager
export MANPAGER=/usr/local/bin/vimpager

# MacPorts
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH=/opt/local/man:$MANPATH

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
# update無効
export DISABLE_AUTO_UPDATE="true"
source $ZSH/oh-my-zsh.sh

# 補完機能の強化
autoload -U compinit
# 入力しているコマンド名が間違っている場合にもしかして：を出す。
setopt correct
# ビープを鳴らさない
setopt nobeep
# 色を使う
setopt prompt_subst
# ^Dでログアウトしない。
setopt ignoreeof
# バックグラウンドジョブが終了したらすぐに知らせる。
setopt no_tify
# 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
# 補完
# タブによるファイルの順番切り替えをしない
# unsetopt auto_menu
# alias grep="grep --color -n -I --exclude='*.svn-*' --exclude='entries' --exclude='*/cache/*'"
# vim
alias vi="vim"
# tree
alias tree="tree -NC" # N: 文字化け対策, C:色をつける
# cdしたあとで、自動的に ls する
function chpwd() { ls -1 }
