# path
export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.nodebrew/current/bin:$PATH"
export PATH=~/.cargo/bin:$PATH

# cool-peco
# === cool-peco init ===
FPATH="$FPATH:/Users/ToshimitsuKugimoto/cool-peco"
autoload -Uz cool-peco
cool-peco
# ======================
bindkey '^r' cool-peco-history
alias cps=cool-peco-ps
alias gitc=cool-peco-git-checkout
alias gitl=cool-peco-git-log
alias pecoref="cat ~/.zshrc | grep -i cool-peco"

# Google Cloud SDK
export CLOUDSDK_PYTHON="${HOME}/.pyenv/versions/2.7.10/bin/python"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ToshimitsuKugimoto/Library/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ToshimitsuKugimoto/Library/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/ToshimitsuKugimoto/Library/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ToshimitsuKugimoto/Library/google-cloud-sdk/completion.zsh.inc'; fi
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ToshimitsuKugimoto/.sdkman"
[[ -s "/Users/ToshimitsuKugimoto/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ToshimitsuKugimoto/.sdkman/bin/sdkman-init.sh"
