### ZSH/Oh My Zsh Configuration ###

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# This loads Oh My Zsh.
source "$ZSH/oh-my-zsh.sh"


### Environment Variables & PATH ###

# Set preferred editor
export EDITOR='nvim'

# Set language environment
export LC_ALL=en_US.UTF-8

# Tool-specific environment variables
export GOPATH=$HOME/go
export BUN_INSTALL="$HOME/.bun"
export NVM_DIR="$HOME/.nvm"

# Prepend to PATH, so user-installed binaries take precedence.
export PATH=$HOME/bin:$HOME/.local/bin:$PATH
export PATH=$HOME/.npm-global/bin:$PATH
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/home/parth/.local/share/nvim/mason/bin


### Aliases ###
alias zshconfig="nvim ~/.zshrc"
alias nv="nvim"
alias vim="nvim"
alias ls="eza"
alias cat="bat"
alias nvconf="cd ~/.config/nvim && nv"
alias tmuxconf="cd ~ && tmux new -s tmux && nv .tmux.conf"


### Initialization Scripts ###

# nvm (Node Version Manager)
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# starship prompt
[ -x "$(command -v starship)" ] && eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"


### Custom Functions & Keybindings ###

# fzf search function (Ctrl+T)
search() {
  local file
  file=$(fd --type f --hidden --no-ignore | fzf --preview 'bat --style=numbers --color=always {} | head -100')
  [ -n "$file" ] && nvim "$file"
}

autoload -Uz add-zsh-hook
search-wrapper() {
  zle -I            # Clear any pending input
  search
  zle reset-prompt  # Refresh prompt after running
}
zle -N search-wrapper
bindkey '^T' search-wrapper
