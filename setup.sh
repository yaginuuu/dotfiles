mkdir -p ~/.vim/userautoload 2>/dev/null
mkdir -p ~/.vim/userautoload/init 2>/dev/null
mkdir -p ~/.vim/userautoload/plugins 2>/dev/null

mkdir -p ~/.vim/rc 2>/dev/null
mkdir -p ~/.vim/colors 2>/dev/null

git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/
rm -rf molokai 2>/dev/null

ln -sf ~/.dotfiles/settingVim/dein.toml ~/.vim/rc/dein.toml

ln -sf ~/.dotfiles/.oh-my-zsh ~/
ln -sf ~/.dotfiles/.bash_profile ~/
ln -sf ~/.dotfiles/.tmux.conf ~/
ln -sf ~/.dotfiles/.zshrc ~/
ln -sf ~/.dotfiles/.vimrc ~/

ln -sf ~/.dotfiles/settingVim/based.vim ~/.vim/userautoload
ln -sf ~/.dotfiles/settingVim/plugins.vim ~/.vim/userautoload

ln -sf ~/.dotfiles/settingVim/init/indent.vim ~/.vim/userautoload/init
ln -sf ~/.dotfiles/settingVim/init/color.vim ~/.vim/userautoload/init
ln -sf ~/.dotfiles/settingVim/init/template.vim ~/.vim/userautoload/init

ln -sf ~/.dotfiles/settingVim/plugins/ag.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/settingVim/plugins/caw.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/settingVim/plugins/neosnippet.vim ~/.vim/userautoload/plugins
# ln -sf ~/.dotfiles/settingVim/plugins/switch.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/settingVim/plugins/surround.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/settingVim/plugins/unite.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/settingVim/plugins/syntastic.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/settingVim/plugins/vim-startify.vim ~/.vim/userautoload/plugins

ln -sf ~/.dotfiles/git/.gitignore ~/.gitignore

git config --global core.excludesfile ~/.gitignore
