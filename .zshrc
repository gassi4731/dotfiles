# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# path
export PATH=$HOME/bin:/usr/local/bin:$PATH

# alias
alias lsa="ls -la"
alias ls="ls -GF"
alias gls="gls --color"
alias ga="git add"
alias gs-s="git status --short"
alias gs-l="git status --long"
alias gc-m="git commit -m"
alias gp="git push"
alias gp-h="git push origin HEAD"
alias g-fix="gpgconf --kill gpg-agent"
alias g-clean= "git branch --merged|egrep -v '\*|develop|staging|master|main'|xargs git branch -d"

# color
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# prompt
export PURE_PROMPT_SYMBOL=🐧

# cool-peco
# === cool-peco init ===
FPATH="$FPATH:$HOME/dotfiles/cool-peco"
autoload -Uz cool-peco
cool-peco
# ======================
bindkey '^r' cool-peco-history
alias cps=cool-peco-ps
alias gitc=cool-peco-git-checkout
alias gitl=cool-peco-git-log
alias pecoref="cat ~/.zshrc | grep -i cool-peco"

# flutter
# export PATH="$PATH:/Users/yohigashida/development/flutter/bin"
export PATH="$PATH":"$HOME/fvm/default/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# node
export PATH="$HOME/.nodebrew/current/bin:$PATH"

# ruby
source $HOME/.zshenv

export PATH="/opt/homebrew/opt/postgresql@13/bin:$PATH"

# Python
export PATH="$HOME/Library/Python/3.9/bin:$PATH"

# Github SSH
export GPG_TTY=$TTY
# 'pinentry-program /usr/local/bin/pinentry-mac' > ~/.gnupg/gpg-agent.conf

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yohigashida/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yohigashida/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yohigashida/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yohigashida/google-cloud-sdk/completion.zsh.inc'; fi

# node
eval "$(nodenv init -)"

# go
export PATH=$PATH:$HOME/go/bin


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/yohigashida/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/yohigashida/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/yohigashida/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/yohigashida/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

# PostgreSQL
export PATH="/usr/local/opt/postgresql@15/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
