# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"

export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH=$PATH:/usr/local/mysql/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export TERM=xterm-256color
#sshで接続した先で日本語が使えるようにする
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# エディタ
export EDITOR=/usr/local/bin/vim
#
# # ページャ
export PAGER=/usr/local/bin/vimpager
export MANPAGER=/usr/local/bin/vimpager
#
#
# # -------------------------------------
# # zshのオプション
# # -------------------------------------
#
# ## 補完機能の強化
autoload -U compinit
compinit
#
# ## 入力しているコマンド名が間違っている場合にもしかして：を出す。
setopt correct
#
# # ビープを鳴らさない
setopt nobeep
#
# ## 色を使う
setopt prompt_subst
#
# ## ^Dでログアウトしない。
setopt ignoreeof
#
# ## バックグラウンドジョブが終了したらすぐに知らせる。
setopt no_tify
#
# ## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
#
# # 補完
# ## タブによるファイルの順番切り替えをしない
unsetopt auto_menu

alias grep="grep --color -n -I --exclude='*.svn-*' --exclude='entries' --exclude='*/cache/*'"
#
# ls
alias l="ls -a" # color for darwin
alias ls="ls -a"
alias la="ls -la"
alias l1="ls -1"
# vim
alias vi="vim"
# tree
alias tree="tree -NC" # N: 文字化け対策, C:色をつける

# cdしたあとで、自動的に ls する
function chpwd() { ls -1 }
#

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
# export SSH_KEY_PATH="~/.ssh/dsa_id"
