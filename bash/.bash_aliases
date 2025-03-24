# Shell
alias path="echo $PATH | tr ':' '\n'"

# Git
alias g="git"
alias ga="git add"
alias gb="git branch"
alias gcm="git commit -m"
alias gco="git checkout"
alias gd="git diff"
alias gds="git diff --staged"
alias gl="git log"
alias gst="git status"
alias gu="git pull"
alias gp="git push"

if [ -f /usr/share/bash-completion/completions/git ]
then
  source /usr/share/bash-completion/completions/git
  __git_complete g __git_main
  __git_complete ga _git_add
  __git_complete gb _git_branch
  __git_complete gco _git_checkout
  __git_complete gd _git_diff
  __git_complete gds _git_diff
  __git_complete gu _git_pull
  __git_complete gp _git_push
fi

# Tools
alias be="bundle exec"
alias docker="podman" # years of muscle memory!
alias p="podman"
alias tf="terraform"
alias v="nvim"
