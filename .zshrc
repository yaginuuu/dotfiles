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
export LANG=ja_JP.UTF-8

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
# export ZSH=$HOME/.oh-my-zsh
# ZSH_THEME="amuse"
# update無効
# export DISABLE_AUTO_UPDATE="true"
# source $ZSH/oh-my-zsh.sh

# cdコマンドを省略して、ディレクトリ名のみの入力で移動
setopt auto_cd
# コマンドミスを修正
setopt correct

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

# ブランチ名を色付きで表示させるメソッド
function rprompt-git-current-branch {
  local branch_name st branch_status

  if [ ! -e  ".git" ]; then
    # gitで管理されていないディレクトリは何も返さない
    return
  fi
  branch_name=`git rev-parse --abbrev-ref HEAD 2> /dev/null`
  st=`git status 2> /dev/null`
  if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
    # 全てcommitされてクリーンな状態
    branch_status="%F{green}"
  elif [[ -n `echo "$st" | grep "^Untracked files"` ]]; then
    # gitに管理されていないファイルがある状態
    branch_status="%F{red}?"
  elif [[ -n `echo "$st" | grep "^Changes not staged for commit"` ]]; then
    # git addされていないファイルがある状態
    branch_status="%F{red}+"
  elif [[ -n `echo "$st" | grep "^Changes to be committed"` ]]; then
    # git commitされていないファイルがある状態
    branch_status="%F{yellow}!"
  elif [[ -n `echo "$st" | grep "^rebase in progress"` ]]; then
    # コンフリクトが起こった状態
    echo "%F{red}!(no branch)"
    return
  else
    # 上記以外の状態の場合は青色で表示させる
    branch_status="%F{blue}"
  fi
  # ブランチ名を色付きで表示する
  echo "${branch_status}[$branch_name]%{${reset_color}%}"
}
# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst
# TODO: oh-my-zshからの脱却
autoload -Uz colors
colors
PROMPT=$'%{${fg[blue]}%}%~%{${reset_color}%} `rprompt-git-current-branch`
%{${fg[blue]}%}$%{${reset_color}%} '


# 補完機能の強化
autoload -U compinit
compinit
zstyle ':completion:*' menu select

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
# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups
# cdしたあとで、自動的に ls する
function chpwd() { ls -1 }
setopt nonomatch

# エイリアス
# tree N: 文字化け対策, C:色をつける
alias tree="tree -NC"
alias sed="gsed"
alias awk="gawk"
alias kill_tmux="tmux kill-server"
alias dotfiles="cd ~/.dotfiles; vim"
alias desctop="cd ~/Desktop; vim"
# FIXME: 補完でターゲットが2重に出現してしまう問題
# FIXME: 補完でファイル名が指定できない問題(ディレクトリではないため出現しない)
alias vi='(){
pass=$1;
file=(${(s:/:)pass});
if [ $# = 0 ]; then
    vim -c NERDTreeFocusToggle
elif [ $1 = '.' ]; then
    vim -c NERDTreeFocusToggle
elif [ -d $1 ]; then
    cd $1; vim -c NERDTreeFocusToggle
elif [ -f $1 ]; then
    cd `dirname $1`; vim $file[-1]
else
    vim $1
fi
}'
alias platform="cd ~/work/platform"
export PATH=$HOME/.nodebrew/current/bin:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="$HOME/Library/Python/2.7/bin:$PATH"
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"
