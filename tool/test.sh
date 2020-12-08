#!/bin/bash

# git clone https://github.com/joker-yt/scripts.git

CUR_DIR=`scripts/parentDir.sh $0`
SCRIPT_DIR=`scripts/currentDir.sh`

PATH=${PATH}:${CUR_DIR}:${SCRIPT_DIR}
echo ${PATH}