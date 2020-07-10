git clone git@github.com:matsko/.dotfiles.git
cd ~
ln -s ./.dotfiles/.aliases
ln -s ./.dotfiles/.vimrc
mkdir -p .config/nvim
cd .config/nvim
ln -s ../../.dotfiles/.vimrc ./init.vim
