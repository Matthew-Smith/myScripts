function up() {
    LIMIT=$1
    P=$PWD
    for i in $(seq 1 $LIMIT); do
        P=$P/..;
    done
    cd $P
    export MPWD=$P
}

function back() {
    LIMIT=$1
    P=$MPWD
    for i in $(seq 1 $LIMIT); do
        P=${P%/..};
    done
    cd $P
    export MPWD=$P
}

alias gits='git status'
alias l='ls -alF'
alias ll='ls -lF'

# git aliases:
# git config --global alias.co checkout
# git config --global alias.branches branch -l
# git config --global alias.feature "checkout --track trunk -b"
# git config --global alias.dirdiff "difftool --dir-diff"
# git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
