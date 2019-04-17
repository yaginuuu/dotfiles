ln -sfn ~/dotfiles/.vim ~/.vim
ln -sfn ~/dotfiles/.zsh.d ~/.zsh.d

ln -sf ~/dotfiles/.bash_profile ~/
ln -sf ~/dotfiles/.tmux.conf ~/
ln -sf ~/dotfiles/.zshrc ~/

cp ~/dotfiles/git/.gitignore ~/.gitignore
# .gitconfigを適応したい場合はコメントをはずす
# cp ~/.dotfiles/git/.gitconfig ~/.gitconfig

git config --global core.excludesfile ~/.gitignore
