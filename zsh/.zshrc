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
zstyle :prompt:pure:git:stash show yes
autoload -U promptinit; promptinit
prompt pure


source $ZSH/oh-my-zsh.sh
eval "$(zoxide init zsh)"