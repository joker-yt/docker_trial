#!/bin/bash

if [ $# -ne 1 ] ; then
    echo "usage: > ./isExecutable.sh fname"
    echo "check if target is executablee but not shell script or not"
fi

if [ -f $1 -a -x $1 ]; then 
    if [ `echo $1 | egrep -v "\.sh$"` ]; then
        ls $1
    fi
fi
