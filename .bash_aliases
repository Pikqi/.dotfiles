# custom alias list
treel(){
  tree -L "$1"
}

alias lla='ls -lA'

alias gs='git status'
alias gl='git log'

alias aptup='sudo apt update && sudo apt upgrade'

alias vimcheat='xdg-open https://vim.rtorr.com/'
alias vim='nvim'

alias ta="tmux a || tmux"

alias sshpi="ssh petar@pi.hole"

# Alias for dotfiles git repo
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 
