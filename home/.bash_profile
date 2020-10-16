# Custom opts {

set -o vi

# }

# Load prompt {

. $HOME/.sensible.bash
. $HOME/.prompt.bash

# }

# Load completion {

. /opt/local/etc/bash_completion
. /opt/local/share/fzf/shell/key-bindings.bash
. /opt/local/share/bash-completion/completions/fzf

if command -v kubectl &>/dev/null; then
  eval "$(kubectl completion bash)"
fi

if [ -f $HOME/.dir_colors ]; then
    eval $(gdircolors $HOME/.dir_colors)
fi

# }

# Functions {

function kubens() {
  if [ -n "$1" ]; then
    kubectl config set-context $(kubectl config current-context) --namespace="$1"
  else
    echo "No namespace specified"
  fi
}

function kubectx() {
  if [ -n "$1" ]; then
    kubectl config use-context $1
  else
    echo "No context specified"
  fi
}

# }

# Aliases {

alias vim='nvim'
alias la='gls -lah --color=auto'
alias lh='gls -lh --color=auto'
alias ls='gls --color=auto'
alias l='gls --color=auto'
alias grep='grep --color=auto'

# }

# Exports {

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=nvim
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='--layout=reverse --color=bg+:#2e3440'
export PATH="/opt/local/bin:$PATH"

# }
