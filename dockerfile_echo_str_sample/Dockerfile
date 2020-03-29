FROM ubuntu:18.04
ADD test-text.txt /root
ADD main.cpp /root
WORKDIR /root

RUN apt update
RUN apt install g++ -y
RUN cd /root
RUN g++ main.cpp
CMD a.out 
