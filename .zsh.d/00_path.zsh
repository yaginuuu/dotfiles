export LANG=ja_JP.UTF-8
# sshで接続した先で日本語が使えるようにする
export TERM=xterm-256color

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# mysql
export PATH=$PATH:/usr/local/mysql/bin

# heroku
export PATH="/usr/local/heroku/bin:$PATH"

# エディタ
export EDITOR=/usr/local/bin/vim

# MacPorts
export PATH=/usr/local/opt/coreutils/libexec/gnubin:${PATH}
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:${MANPATH}

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# phpbrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# ヒストリ(履歴)を保存、数を増やす
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
