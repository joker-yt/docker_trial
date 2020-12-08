#!/bin/bash

# depends on: isExecutable.sh, showSharedLibrariesNeeded.sh, copyFileWithFullPath.sh
# copy all shared libraries into specified directory keeping path structure.

TMPBINLIST="binlist"
TMPSHAREDLIBLIST="liblist"

if [ $# != 2 ]; then
    echo "usage: copyAllSharedLibraries.sh <target_dir> <dest_dir>. exit."
    echo "usage: copyAllSharedLibraries.sh <path to bin> <dest_dir>. exit."
    exit
fi

if [ -f ${TMPBINLIST} ]; then
    rm ${TMPBINLIST}
fi

if [ -f ${TMPSHAREDLIBLIST} ]; then
    rm ${TMPSHAREDLIBLIST}
fi

if [ -d $1 ]; then
    # list all binaries
    find $1 -exec ${DOCKER_SCRIPT_DIR}/isExecutable.sh {} \; > ${TMPBINLIST}

    # list all shared library
    cat ${TMPBINLIST} | xargs -Ix ${DOCKER_SCRIPT_DIR}/showSharedLibrariesNeeded.sh x | sort -u > ${TMPSHAREDLIBLIST}
else
    # list all shared library
    ${DOCKER_SCRIPT_DIR}/showSharedLibrariesNeeded.sh $1 > ${TMPSHAREDLIBLIST}
fi

cat ${TMPSHAREDLIBLIST} | xargs -Ix ${DOCKER_SCRIPT_DIR}/copyFileWithFullPath.sh x $2

