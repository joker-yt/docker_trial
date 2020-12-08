#!/bin/bash

# display all shared libraries to be needed by target
#
# ./showSharedLibrariesNeeded.sh `which strace`
#/usr/lib/x86_64-linux-gnu/libunwind-ptrace.so.0
#/usr/lib/x86_64-linux-gnu/libunwind-x86_64.so.8
#/lib/x86_64-linux-gnu/libc.so.6
#/lib/x86_64-linux-gnu/liblzma.so.5
#/usr/lib/x86_64-linux-gnu/libunwind.so.8
#/lib64/ld-linux-x86-64.so.2
#/lib/x86_64-linux-gnu/libdl.so.2
#/lib/x86_64-linux-gnu/libpthread.so.0

if [ $# != 1 ]; then
    echo "usage: lddlist.sh binary. exit."
    exit
fi

ldd $1 | awk -F" " 'BEGIN{flag=0} \
/.*linux-vdso\.so\.1.*/{flag+=1} \
match(NF, 4){flag+=4} \
match(NF, 2){flag+=2} \
{if(flag==4){print $3;} if(flag==2){print $1;} flag=0;}'
