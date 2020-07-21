git clone git@github.com:matsko/.dotfiles.git
cd ~
ln -s ./.dotfiles/.aliases
ln -s ./.dotfiles/.vimrc
ln -s ./.dotfiles/.gitconfig
mkdir -p .config/nvim
cd .config/nvim
ln -s ../../.dotfiles/.vimrc ./init.vim
touch .gitconfig.local
touch .aliases.local

cd "$HOME/Library/Application Support/Code/User"
rm settings.json
ln -s ~/.dotfiles/.vscode-settings.json ./settings.json
