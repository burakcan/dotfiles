if [ "$TMUX" = "" ]; then tmux; fi

# Oh-my-zsh
export ZSH=/Users/burakcan/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="steeefbc"

# Auto-correction.
ENABLE_CORRECTION="true"

# Plugins
plugins=(git git-extras nyan npm sudo)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh
source ~/.nvm/nvm.sh

nvm use stable

# Personal aliases

alias fuck='sudo $(fc -ln -1)'
alias fucking=sudo