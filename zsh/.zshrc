export ZSH="$HOME/.oh-my-zsh"
# .zshrc

HIST_STAMPS="dd/mm/yyyy"

# --- Plugins

plugins=(
    git
    zsh-completions
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-interactive-cd
    zoxide
)


# Pure theme setup: https://github.com/sindresorhus/pure
fpath+=($HOME/.zsh/pure)
PURE_CMD_MAX_EXEC_TIME=10
zstyle :prompt:pure:path color white
zstyle ':prompt:pure:prompt:*' color cyan
zstyle :prompt:pure:git:stash show yes
autoload -U promptinit; promptinit
prompt pure


source $ZSH/oh-my-zsh.sh
eval "$(zoxide init zsh)"