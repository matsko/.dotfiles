# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in $HOME/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="wedisagree"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

#RPROMPT='${time} %{$fg[magenta]%}$(git_prompt_info)%{$reset_color%}$(git_prompt_status)%{$reset_color%}'

# Which plugins would you like to load? (plugins can be found in $HOME/.oh-my-zsh/plugins/*)
# Custom plugins may be added to $HOME/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Example aliases
source "$HOME/.zsh/.aliases"

# Default Path
export PATH="/Users/matsko/homebrew/bin:/usr/local/bin:/usr/local/sbin"
export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin"

# NodeJS
export NODE_PATH="$HOME/.nvm/current/lib/node_modules"
export PATH="$HOME/bin:$HOME/.nvm/current/bin:$PATH"

# Prompt
PROMPT='%{$fg[yellow]%}[$(pwd)] %{$reset_color%}
> ' # default prompt

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
