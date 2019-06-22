# path
export PATH=$HOME/bin:/usr/local/bin:$PATH

# alias
alias lsa="ls -la"
alias ls="ls -GF"
alias gls="gls --color"

# color
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# pure
autoload -U promptinit; promptinit
export PURE_PROMPT_SYMBOL=🐶🍻
zstyle :prompt:pure:path color cyan
zstyle ':prompt:pure:prompt:*' color cyan
zstyle ':prompt:pure:git:branch' color magenta
prompt pure

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

# terminal color
#export CLICOLOR=1
