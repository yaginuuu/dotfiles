mkdir -p ~/.vim/userautoload 2>/dev/null
mkdir -p ~/.vim/userautoload/init 2>/dev/null
mkdir -p ~/.vim/userautoload/plugins 2>/dev/null
ln -sf ~/.dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/.dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/.dotfiles/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.vimrc ~/.vimrc

ln -sf ~/.dotfiles/settingVim/init/based.vim ~/.vim/userautoload/init
ln -sf ~/.dotfiles/settingVim/init/plugins.vim ~/.vim/userautoload/init
ln -sf ~/.dotfiles/settingVim/init/indent.vim ~/.vim/userautoload/init
ln -sf ~/.dotfiles/settingVim/init/color.vim ~/.vim/userautoload/init
ln -sf ~/.dotfiles/settingVim/init/template.vim ~/.vim/userautoload/init

ln -sf ~/.dotfiles/settingVim/plugins/unite.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/settingVim/plugins/surround.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/settingVim/plugins/ag.vim ~/.vim/userautoload/plugins

ln -sf ~/.dotfiles/.zshrc ~/.zshrc
ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

git config --global core.excludesfile ~/.gitignore
