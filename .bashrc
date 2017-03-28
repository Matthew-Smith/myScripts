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
alias myip='ip -f inet addr | grep -Po "inet \K[\d.]+"'

alias buildinator='sudo python3 ~/html/buildinator/buildinator.py -b Unstable-G4Client-PaceDDC4000xzoR101_7251S-NOS_Containerized -d /home/7251s -c ~/html/buildinator/configs'

# git aliases:
# git config --global alias.co checkout
# git config --global alias.feature "checkout --track trunk -b"
# git config --global alias.dirdiff "difftool --dir-diff"
# git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
