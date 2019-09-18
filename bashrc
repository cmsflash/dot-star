# Editor variables
export VISUAL=vim
export EDITOR=$VISUAL

# sudo alias expansion
alias sudo="sudo "

# Git aliases
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gc="git commit"
alias gp="git push"

# Python 3 environment
alias p="python3"
alias pm="python3 -m"
alias pip3="sudo -H python3 -m pip"

# Bash runcom shortcuts
alias brc="source ~/.bashrc"

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

