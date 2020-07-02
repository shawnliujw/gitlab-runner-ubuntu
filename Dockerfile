FROM ubuntu:18.04
MAINTAINER Shanw Liu <shawn.jw.liu@gmail.com>

RUN apt update && apt install -y curl wget
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt install -y nodejs
RUN curl -sL https://sentry.io/get-cli/ | bash
RUN apt install -y docker.io
RUN wget -O /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64
RUN chmod +x /usr/local/bin/gitlab-runner
RUN gitlab-runner install  --working-directory=/home/gitlab-runner
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["bash"]
