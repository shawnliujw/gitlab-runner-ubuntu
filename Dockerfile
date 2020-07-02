FROM ubuntu:18.04
MAINTAINER Shanw Liu <shawn.jw.liu@gmail.com>

RUN apt update && apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt install -y nodejs
RUN node -v
RUN npm -v

RUN apt install -y docker.io
RUN systemctl start docker && docker --version
