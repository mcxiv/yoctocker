FROM ubuntu:22.04

# Install required packages according to Yocto Quick Start
RUN apt -y update && \
    apt -y install gawk wget git-core diffstat unzip texinfo gcc-multilib \
    build-essential chrpath socat cpio python3 python3-pip python3-pexpect \
    xz-utils debianutils iputils-ping libsdl1.2-dev xterm

# Install missing packages file and locales
RUN apt -y install file locales

# Installing kas
RUN pip3 install kas

# Generating locales 
RUN locale-gen en_US.UTF-8

# Create and set up user
RUN addgroup --gid 1000 yoctocker
RUN adduser --uid 1000 --gid 1000 yoctocker
USER yoctocker
