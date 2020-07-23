if [[ ! -e ~/.dotfiles ]]; then
  git clone git@github.com:matsko/.dotfiles.git
fi

# Link configuration files to the home dir
cd ~
ln -nfs ./.dotfiles/.zshrc
ln -nfs ./.dotfiles/.vimrc
ln -nfs ./.dotfiles/.gitconfig
ln -nfs ./.dotfiles/.tmux.conf
touch .dotfiles/.gitconfig.local
touch .dotfiles/.aliases.local
touch .dotfiles/.paths.local

# Setup NeoVim 
mkdir -p .config/nvim
cd .config/nvim
ln -nfs ../../.dotfiles/.vimrc ./init.vim

# Link VSCode to the dotfiles one
cd "$HOME/Library/Application Support/Code/User"

# Link the VSCode Settings
if [[ ! -L settings.json ]]; then
  rm settings.json
  ln -s ~/.dotfiles/.vscode-settings.json ./settings.json
fi

# Link the VSCode Snippets
if [[ ! -L snippets ]]; then
  rm -fr snippets/
  ln -s ~/.dotfiles/.vscode-snippets ./snippets
fi
