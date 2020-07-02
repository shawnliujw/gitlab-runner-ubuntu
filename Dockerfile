FROM ubuntu:18.04
MAINTAINER Shanw Liu <shawn.jw.liu@gmail.com>

RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN apt install nodejs
RUN node -v

RUN apt-get remove docker docker-engine docker.io containerd runc
RUN apt-get install \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
RUN apt-get update && apt-get install docker-ce docker-ce-cli containerd.io
RUN docker --version
