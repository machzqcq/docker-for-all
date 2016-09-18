# This dockerfile is used to build a web app
# docker build -t  "pradeep/web_app" -f Dockerfile .
# docker build --build-arg VCS_REF=$(git rev-parse --short HEAD) --build-arg BUILD_DATE=$(date -u +"%Y-%m-%dT%H:%M:%SZ") --build-arg VERSION=0.1 -t "pradeep/web_app" .
# Pull base image
FROM node:4.4-wheezy
# Maintainer
MAINTAINER pradeep@seleniumframework.com

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="Docker for all" \
      org.label-schema.description="Example project description in 300 chars or less" \
      org.label-schema.url="https://www.seleniumframework.com" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/machzqcq/docker-for-all" \
      org.label-schema.vendor="Continuous Automation Inc." \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

# Expose ports
EXPOSE 80 443 3000

RUN apt-get update && apt-get install -y wget
RUN wget https://github.com/jwilder/dockerize/releases/download/v0.2.0/dockerize-linux-amd64-v0.2.0.tar.gz
RUN tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.2.0.tar.gz


# Install git client and clone repo
RUN apt-get update && apt-get install -y git curl wget procps && \
    git clone https://github.com/machzqcq/docker-for-all.git
# Change git:// to https:// as sometimes firewall seems to block git
RUN git config --global url."https://".insteadOf git://
# Run npm install to get all dependencies
WORKDIR docker-for-all/developer/web_app
RUN npm install

CMD npm start > server.log

# Define default command and wait until db is started
# An alternative to dockerize is plain shell script as described here - https://docs.docker.com/compose/startup-order/
# entrypoint: ./wait-for-it.sh db:5432 under depends_on section for web
#CMD dockerize -wait tcp://db:5432 npm start
