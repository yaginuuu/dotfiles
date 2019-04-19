alias '..'='cd ..'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

alias tree='tree -NC'
alias sed='gsed'
alias awk='gawk'
alias killtmux='tmux kill-server'
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
alias t=tmux

alias -s rb=ruby
