export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

if type gimme &> /dev/null ; then
    eval "$(gimme 1.12)" 2> /dev/null
fi
