FROM ubuntu:18.04

# password: 'testuser'
ENV USERNAME "testuser"
ENV PASSWORD "testuser"

RUN apt update
RUN apt install -y sudo vim iproute2 net-tools less

# to build c++
RUN apt install -y g++ cmake python3-minimal

# to add general user with sudo primitive (-m, for creating home directory)
	# password is "test"
# ============================================
RUN useradd -m $USERNAME 
RUN echo $USERNAME:$PASSWORD | chpasswd
RUN usermod -aG sudo $USERNAME
# ============================================

# in case of no password
RUN echo "$USERNAME ALL=NOPASSWD:ALL" >> /etc/sudoers

# env below have to be set after "useradd" because setting this creates that dir

WORKDIR /home/$USERNAME
USER $USERNAME
