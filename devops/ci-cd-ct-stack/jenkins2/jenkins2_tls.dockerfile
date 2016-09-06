#docker build -t "mytlsjenkins" --build-arg DOCKER_HOST=$(docker-machine ls --filter name=$(cat ../../DOCKER_MACHINE_NAME) --format "{{.URL}}") -f jenkins_tls.dockerfile .

# First copy the certs created by docker-machine to root of this folder
# bin/bash copy_certs.sh

# Run as below
# docker run -d -p 8080:8080 -p 50000:50000 -v /home/docker:/var/jenkins_home mytlsjenkins
# After this the client certs should be scp as below
#docker-machine scp ~/.docker/machine/machines/default/ca.pem default:/home/docker/.docker/
#docker-machine scp ~/.docker/machine/machines/default/cert.pem default:/home/docker/.docker/
#docker-machine scp ~/.docker/machine/machines/default/key.pem default:/home/docker/.docker/

FROM jenkins:2.7.1-alpine
MAINTAINER Pradeep Macharla <pradeep@seleniumframework.com>
USER root

RUN apk update && apk add wget tar

#USER root
# export DOCKER_HOST environment variable
ARG DOCKER_HOST
ENV DOCKER_HOST=$DOCKER_HOST
# so that jenkins can access docker daemon on docker-machine
# docker reads client certs from this location
COPY ca.pem cert.pem key.pem /home/docker/.docker/

ENV DOCKER_TLS_VERIFY="1"
ENV DOCKER_CERT_PATH=/var/jenkins_home/.docker
USER root
# Get docker client
RUN wget https://get.docker.com/builds/Linux/x86_64/docker-latest.tgz
RUN tar xvzf docker-latest.tgz && mv ./docker/* /usr/bin/ 
