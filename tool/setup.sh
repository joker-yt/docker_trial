#!/bin/bash

if [ $# -ne 2 ]; then
    echo "usage: setup.sh <project name> <list of binary files>"
    exit 1
fi

PROJECT_NAME=$1

#### begining of setup path
# git clone https://github.com/joker-yt/scripts.git

CUR_DIR=`scripts/parentDir.sh $0`
SCRIPT_DIR=`scripts/currentDir.sh`

PATH=${PATH}:${CUR_DIR}:${SCRIPT_DIR}
DOCKER_SCRIPT_DIR=${SCRIPT_DIR}
#### end of setup path

#### begining of creating Dockerfile
cp templateDockerfile Dockerfile
cat $2 | xargs -Ix echo "COPY x /usr/local/x" >> Dockerfile

#### end of creating file
# docker build -t ${PROJECT_NAME}:latest .
