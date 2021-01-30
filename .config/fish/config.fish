set fish_greeting


# Z script
alias go=z
# Copy stdout to clipboard
alias c='xclip -selection clipboard'
# Ytop
alias yt='ytop -c monokai'

# ls aliases
alias l='exa -lbF --git'                                               # list, size, type, git
alias ls='exa'                                                         # ls
alias ll='exa -lbGF --git'                                             # long list
alias llm='exa -lbGd --git --sort=modified'                            # long list, modified date sort
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'  # all list
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale' # all + extended list



starship init fish | source
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
