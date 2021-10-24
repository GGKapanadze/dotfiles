set fish_greeting

# Bindings
bind \cR 'peco_history'

# Aliases
alias go=z
alias c='xclip -selection clipboard'
alias yt='ytop -c monokai'
alias vim='nvim'
alias ls='exa'
alias ll='exa -lga --icons'
alias lx='exa -lga --icons --level=2 --tree'


starship init fish | source
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
