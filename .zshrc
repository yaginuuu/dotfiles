# rbenv
export PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH=$PATH:/usr/local/mysql/bin

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

#sshで接続した先で日本語が使えるようにする
export TERM=xterm-256color
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# エディタ設定
export EDITOR=/usr/bin/vim

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
