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

# ページャ設定
export PAGER=/usr/local/bin/vimpager
export MANPAGER=/usr/local/bin/vimpager

# MacPorts
export PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export MANPATH=/opt/local/man:$MANPATH

# oh-my-zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="amuse"
# update無効
export DISABLE_AUTO_UPDATE="true"
source $ZSH/oh-my-zsh.sh

# peco
# ヒストリ(履歴)を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history

# TODO: oh-my-zshからの脱却
# autoload -Uz colors
# colors
# PROMPT="%{${fg[yellow]}%}$%{${reset_color}%} "

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
# cdしたあとで、自動的に ls する
function chpwd() { ls -1 }

# エイリアス
alias vi="vim"
# tree N: 文字化け対策, C:色をつける
alias tree="tree -NC"
alias sed="gsed"
alias awk="gawk"
alias tmux kill-server="kill_tmux"
alias dotfiles="cd ~/.dotfiles; vim"
alias desctop="cd ~/Desktop; vim"
alias vi='(){
if [ -e $1 ]; then
    cd $1; vim
else
    vim $1
fi
}'
