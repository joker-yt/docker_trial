FROM ubuntu:18.04

ENV USERNAME "testuser"

RUN apt update
RUN apt install -y sudo vim iproute2 net-tools

# to build c++
RUN apt install -y g++ cmake python3-minimal

# to add general user with sudo primitive (-m, for creating home directory)
# password is "test"
# ============================================
RUN useradd -m $USERNAME 
RUN echo $USERNAME:"test" | chpasswd
RUN usermod -aG sudo $USERNAME
# ============================================

# in case of no password
RUN echo "testuser ALL=NOPASSWORD:ALL" >> /etc/sudoers

# env below have to be set after "useradd" because setting this creates that dir

WORKDIR /home/$USERNAME
USER testuser
