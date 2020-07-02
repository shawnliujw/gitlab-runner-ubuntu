FROM ubuntu:18.04
MAINTAINER Shanw Liu <shawn.jw.liu@gmail.com>

RUN apt update && apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt install -y nodejs
RUN node -v
RUN npm -v

RUN apt-get remove docker docker-engine docker.io containerd runc
RUN apt-get install -y  \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-get update && apt-get install docker-ce docker-ce-cli containerd.io
RUN docker --version
