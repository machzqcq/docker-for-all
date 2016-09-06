FROM alpine:latest
ARG var1
RUN mkdir $var1
VOLUME $var1
CMD ["echo","hello-world"]