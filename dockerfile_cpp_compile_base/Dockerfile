FROM ubuntu:18.04
WORKDIR /root
# add target files or directory by "ADD"
ADD main.cpp ${WORKDIR}

RUN apt update
RUN apt upgrade -y
RUN apt install -y g++ cmake strace

# build and exec binary
# > a.out 2>&1 > run.log
# > cp run.log <mount host dir>
CMD g++ -std=c++17 main.cpp && strace ./a.out > /mnt/run.log 2>&1
