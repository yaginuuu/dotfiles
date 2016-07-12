mkdir -p ~/.vim/userautoload 2>/dev/null
mkdir -p ~/.vim/userautoload/init 2>/dev/null
mkdir -p ~/.vim/userautoload/plugins 2>/dev/null
mkdir -p ~/.vim/ftplugin 2>/dev/null

mkdir -p ~/.vim/rc 2>/dev/null
mkdir -p ~/.vim/colors 2>/dev/null

mkdir -p ~/.vagrant.d 2>/dev/null

git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors/
rm -rf molokai 2>/dev/null

ln -sf ~/.dotfiles/vim/dein.toml ~/.vim/rc/dein.toml

ln -sf ~/.dotfiles/.oh-my-zsh ~/
ln -sf ~/.dotfiles/.bash_profile ~/
ln -sf ~/.dotfiles/.tmux.conf ~/
ln -sf ~/.dotfiles/.zshrc ~/
ln -sf ~/.dotfiles/.vimrc ~/

ln -sf ~/.dotfiles/vim/based.vim ~/.vim/userautoload
ln -sf ~/.dotfiles/vim/plugins.vim ~/.vim/userautoload

ln -sf ~/.dotfiles/vim/init/indent.vim ~/.vim/userautoload/init
ln -sf ~/.dotfiles/vim/init/color.vim ~/.vim/userautoload/init
ln -sf ~/.dotfiles/vim/init/template.vim ~/.vim/userautoload/init
ln -sf ~/.dotfiles/vim/init/filetype.vim ~/.vim/userautoload/init

ln -sf ~/.dotfiles/vim/plugins/ag.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/vim/plugins/caw.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/vim/plugins/neosnippet.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/vim/plugins/switch.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/vim/plugins/surround.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/vim/plugins/unite.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/vim/plugins/syntastic.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/vim/plugins/vim-startify.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/vim/plugins/vim-precious.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/vim/plugins/emmet.vim ~/.vim/userautoload/plugins
ln -sf ~/.dotfiles/vim/plugins/neocomplete.vim ~/.vim/userautoload/plugins

# ln -sf ~/.dotfiles/vim/init/filetype.vim ~/.vim
# ln -sf ~/.dotfiles/vim/ftplugin/html.vim ~/.vim/ftplugin
# ln -sf ~/.dotfiles/vim/ftplugin/eruby.vim ~/.vim/ftplugin

ln -sf ~/.dotfiles/git/.gitignore ~/.gitignore
ln -sf ~/.dotfiles/Vagrantfile ~/.vagrant.d/Vagrantfile

git config --global core.excludesfile ~/.gitignore
