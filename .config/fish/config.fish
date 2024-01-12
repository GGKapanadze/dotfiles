set fish_greeting

# Bindings
bind \cr peco_history # Bind for peco select history to Ctrl+R
bind \cf peco_directory # Bind for peco change directory to Ctrl+F
bind \cg lazygit # Bind for lazygit to Ctrl+G

# Aliases
alias go=z
alias c='pbcopy'
alias yt='ytop -c monokai'
alias ls="lsd"
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias vim='nvim'


starship init fish | source
zoxide init fish | source

# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end

# pnpm
set -gx PNPM_HOME "/Users/ggkapanadze/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

set --universal nvm_default_version v20.10.0
set -gx XDG_CONFIG_HOME $HOME/.config
