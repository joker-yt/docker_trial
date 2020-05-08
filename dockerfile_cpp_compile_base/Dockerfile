FROM ubuntu:18.04
WORKDIR /root
# add target files or directory by "ADD"

RUN apt update
RUN apt upgrade
RUN apt install -y g++ cmake

# build and exec binary
# > a.out 2>&1 > run.log
# > cp run.log <mount host dir>
