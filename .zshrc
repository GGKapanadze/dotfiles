# ZSH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
ZSH_TMUX_AUTOSTART=true

#PNPM
export PNPM_HOME="/Users/ggkapanadze/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac

#Lazygit
export XDG_CONFIG_HOME="$HOME/.config"

#NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

zstyle ':omz:update' frequency 10

test -r "~/.dir_colors" && eval $(dircolors ~/.dir_colors)

plugins=(git tmux zsh-autosuggestions zsh-syntax-highlighting ssh-agent)

source $ZSH/oh-my-zsh.sh

# Define a function that runs lazygit
function run_lazygit() {
  lazygit
}

# Create a zsh widget that runs the function
zle -N run_lazygit

# Bind the widget to ctrl+g
bindkey '^G' run_lazygit

alias go=z
alias c='pbcopy'
alias yt='ytop -c monokai'
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias vim='nvim'
alias pn='pnpm'

eval "$(atuin init zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

PATH=~/.console-ninja/.bin:$PATH
