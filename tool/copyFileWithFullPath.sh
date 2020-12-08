#!/bin/bash

# e.g. copyFileWithFullPath.sh /usr/bin/strace ./lib
# -> copy strace to ./lib/usr/bin/strace

if [ $# != 2 ]; then
    echo "usage: copy-sharedlib.sh <src full path> <dest dir>. exit."
    exit
fi

echo $1 | awk -F"/" '!match(NF,0){sub("/[^/]*$", "", $0); print $0}'| xargs -Ix mkdir -p $2x
echo $1 | xargs -Ix cp x $2x
