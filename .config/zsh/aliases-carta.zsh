# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Directories
alias repo="cd ~/repo"

# Files
alias zshrc="nvim ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

# Programs
alias vim="nvim"
alias vi="vim"
alias r="source ranger"
alias rr="ranger"
alias code="open -a Visual\ Studio\ Code"
alias python="python3"

# git
alias glom='git pull origin $(git_main_branch)'
alias gprom='git pull --rebase origin $(git_main_branch)'
alias gupom='git pull --rebase origin $(git_main_branch)'
alias gcoi='git checkout-interactive'
gnew () {
  git checkout -b "${1}" && git push -u origin $(current_branch)
}

# docker
alias dc='docker-compose'
