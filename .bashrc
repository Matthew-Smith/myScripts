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
