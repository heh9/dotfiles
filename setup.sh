#!/bin/bash

dummy="false"

function log_success {
    printf "\033[0;32m$1\033[0m\n"
}

function log_fail {
    printf "\033[0;31m$1\033[0m\n"
}

function helper_ask_yn {
    local ref=$2
    if ${!2} -eq "true"; then return 0; fi

    while true; do
        read -p "> $1 [Yes/Any/No] " yn
        case $yn in
            "" ) return 0;;
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            Any ) eval $ref="true" && return 0;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

echo "Configuring neovim ✏️"

helper_ask_yn "Do you want to configure neovim in $HOME/.config/nvim ?" "dummy"
if test $? -eq 0; then
    log_success "Linking $PWD/home/.config/nvim -> $HOME/.config/nvim"
    # ln -sf "$PWD/home/.config/nvim" "$HOME/.config/nvim"
fi

echo "Installing packages 📦"

ports=$(cat <<EOL
    bash
    bash-completion
    coreutils
    fd
    findutils
    fzf
    gawk
    git
    grep
    gsed
    wget
    htop
    jq
    inetutils
    watch
EOL
)

any_macports="false"
for p in $ports; do
    helper_ask_yn "Do you want to install $p ?" "any_macports"
    if test $? -eq 0; then
        log_success "Installing $p"
        brew install $p
    else
        log_fail "Skipping $p"
    fi
done
