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
# bun completions
[ -s "/Users/huss/.bun/_bun" ] && source "/Users/huss/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/huss/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
