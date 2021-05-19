####################
# OhMyZsh setting
#################### 
# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"
# theme
ZSH_THEME="agnoster-ke"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    z
)
source $ZSH/oh-my-zsh.sh

####################
# User configuration
####################
# press CTRL+X+E can open vim quickly
export EDITOR='vim'

# For golang
export GOPATH=$HOME/repo/go
export GOROOT=/usr/local/opt/go/libexec

# command history
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# load alias definitions
if [ -f ~/.common_alias ]; then
    . ~/.common_alias
fi
if [ -f ~/.my_alias ]; then
    . ~/.my_alias
fi
if [ -f ~/.ecs_alias ]; then
    . ~/.ecs_alias
fi

# for pyenv
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
eval "$(pyenv virtualenv-init -)"

# costom functions
# https://github.com/lf94/peek-for-tmux
peek() { tmux split-window -p 33 "$EDITOR" "$@" || exit; }

# To test you $PATH:
# echo "$PATH" | tr ':' '\n'
typeset -U path  # keep path alwasy unique, tmux will reload zshrc

# Proxy
# export http_proxy="http://127.0.0.1:8010"
# export all_proxy="http://127.0.0.1:8010"
