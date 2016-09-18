# This dockerfile is used to build a web app
# docker build -t  "api_snapshot" --build-arg NEXUS_SERVER=$(docker-machine ip default) -f Dockerfile .
# docker run -d -p 3412:3412 --name api_app api_snapshot
# docker run -d --name db -p 8091-8094:8091-8094 -p 11210:11210 couchbase:community-4.0.0
# docker run -d -p 3412:3412 -e COUCH_SERVER=$(docker-machine ip default) -e NEXUS_SERVER=$(docker-machine ip default) api_app
# Pull base image
FROM node:4.4-wheezy
# Maintainer
MAINTAINER pradeep@seleniumframework.com
# Expose ports
EXPOSE 80 443 3412

# Since couch container exposes port on docker host, use that in the app
ENV COUCH_SERVER

# Set Nexus registry endpoint
ARG NEXUS_SERVER

RUN npm config set registry http://$NEXUS_SERVER:18081/content/repositories/npmproxy/

# Install git client and clone repo
RUN apt-get update && apt-get install -y git curl wget procps && \
    git clone https://github.com/machzqcq/docker-for-ci.git
# Change git:// to https:// as sometimes firewall seems to block git
RUN git config --global url."https://".insteadOf git://
# Run npm install to get all dependencies
WORKDIR docker-for-all/api_app/
RUN npm install
EXPOSE 8080
CMD [ "npm", "start" ]
