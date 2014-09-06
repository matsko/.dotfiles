# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

rvmsudo_secure_path=1 

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Example aliases
source '/Users/matias/.zsh/.aliases'

# Customize to your needs...
export PATH=/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/bin:~/.rbenv/shims:$PATH:/usr/bin:/bin:/usr/sbin:/usr/local/bin:/usr/X11/bin:usr/:/usr/local/sbin:/opt/local/bin:/opt/local/sbin:/Applications/dart/dart-sdk/bin

PROMPT='%{$fg[magenta]%}[$(pwd)] %{$reset_color%}
> ' # default prompt

PGHOST=localhost

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export CHROME_CANARY_BIN="/Applications/dart/chromium/Chromium.app/Contents/MacOS/Chromium"
export DART_FLAGS="--enable_type_checks --enable_asserts"

export NEW_RELIC_HOME="config"
export NEW_RELIC_ENABLED=false

export GOPATH=~/.goworkspace
export PATH="$GOPATH/bin:$PATH"
