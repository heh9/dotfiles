# Custom opts {

set -o vi

# }

# Load prompt {

. $HOME/.sensible.bash
. $HOME/.prompt.bash

# }

# Load completion {

. /usr/local/etc/bash_completion.d/fd.bash
. /usr/local/etc/profile.d/bash_completion.sh
. /usr/local/opt/fzf/shell/key-bindings.bash
. /usr/local/opt/fzf/shell/completion.bash
. /usr/local/etc/bash_completion.d/git-completion.bash
. /usr/local/etc/bash_completion.d/hugo.sh
. /usr/local/etc/bash_completion.d/hyperfine.bash

if command -v kubectl &>/dev/null; then
  eval "$(kubectl completion bash)"
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
export FZF_DEFAULT_OPTS='--layout=reverse --color=bg+:#272727'

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"
export PATH="/Users/heh9/.cargo/bin:$PATH"
export GOROOT="/usr/local/opt/go/libexec"

# }
