FROM alpine:3.4

MAINTAINER Pradeep Macharal <pradeep@seleniumframework.com>

RUN apk upgrade && \
    apk add --no-cache ruby ruby-bundler