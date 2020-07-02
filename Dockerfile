FROM shawnliu/kubectl-node:13-12
MAINTAINER Shanw Liu <shawn.jw.liu@gmail.com>

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
