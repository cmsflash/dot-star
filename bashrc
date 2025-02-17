# Editor variables
export VISUAL=vim
export EDITOR=$VISUAL

# SSH agent forwarding
export SSH_AUTH_SOCK=$(ls -t /tmp/ssh-**/* | head -1)

# sudo alias expansion
alias sudo="sudo "

# Git aliases
alias g="git"
alias gs="git status"
alias gsw="git switch"
alias gd="git diff"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gco="git checkout"
alias grs1="git checkout HEAD~1 --"

# Python 3 environment
alias p="python3"
alias pm="python3 -m"
alias pip3="sudo -H python3 -m pip"

# Shell runcom shortcuts
alias brc=". ~/.bashrc"
alias zrc=". ~/.zshrc"

# Grep shortcuts
alias gre="grep -rn . -e"

# Watch aliases
alias watch='watch '

# Bazel aliases
alias bt="bazel test"

# Functions
tard () {
    dir=$(echo $1 | cut -d/ -f1)
    tar -cvf ${dir}.tar $dir
}

untar () {
    file=$1
    tar -xvf $file
    rm $file
}

function fixit() {
  pre-commit run --hook-stage=manual
}