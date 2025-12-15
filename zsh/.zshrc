export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HIST_STAMPS="dd/mm/yyyy"

# --- Plugins

plugins=(
    git
    zsh-completions
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-interactive-cd
)


source $ZSH/oh-my-zsh.sh
