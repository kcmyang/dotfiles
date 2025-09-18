# git
alias glom='git pull origin $(git_main_branch)'
alias gprom='git pull --rebase origin $(git_main_branch)'
alias gupom='git pull --rebase origin $(git_main_branch)'

# https://github.com/jhermsmeier/git-branch-select
alias gcoi='git branch-select'

gnew () {
  git checkout -b "${1}" && git push -u origin $(current_branch)
}

# https://github.com/ohmyzsh/ohmyzsh/pull/9412#issuecomment-1310437963
git_main_branch() {
  echo $(git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@')
}

# https://stackoverflow.com/a/33548037
alias gbdr='git_delete_branches_deleted_on_remote'
git_delete_branches_deleted_on_remote() {
  git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done
}
