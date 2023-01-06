# Custom opts {

set -o vi

# }

# Load prompt {

. $HOME/.sensible.bash
eval "$(starship init bash)"

# }

# Load completion {

. /usr/local/etc/bash_completion.d/fd.bash
. /usr/local/etc/profile.d/bash_completion.sh
. /usr/local/opt/fzf/shell/key-bindings.bash
. /usr/local/opt/fzf/shell/completion.bash
. /usr/local/etc/bash_completion.d/git-completion.bash

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

alias la='gls -lah --color=auto'
alias lh='gls -lh --color=auto'
alias ls='gls --color=auto'
alias l='gls --color=auto'
alias grep='grep --color=auto'

alias vvim='/usr/bin/vim'
alias vim='nvim'
alias k='kubectl'

# }

# Exports {

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=nvim
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='--layout=reverse --color=bg+:#282c34'

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/inetutils/libexec/gnubin:$PATH"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export GOPATH="/Users/vladimir.iacob/go"

# NVM {
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
# }
# }
. "$HOME/.cargo/env"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
