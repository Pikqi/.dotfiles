# custom alias list
tl(){
  tree -L "$1"
}

alias lla='ls -lA'

alias gs='git status'
alias gl='git log'

alias aptup='sudo apt update && sudo apt upgrade'

alias vimcheat='xdg-open https://vim.rtorr.com/'
alias vim='nvim'

alias ta="tmux a || tmux"

alias sshpi="ssh petar@192.168.23.12"

alias lg="lazygit"

# Alias for dotfiles git repo
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
alias lazyconfig='lazygit --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' 
