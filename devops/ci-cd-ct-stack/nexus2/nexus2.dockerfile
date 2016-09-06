# docker run -d -p 8081:8081 --name nexus -e MAX_HEAP=768m sonatype/nexus
# For persistent data , use data volume container, which is a separate container. Read https://hub.docker.com/r/sonatype/nexus/

FROM sonatype/nexus:oss

MAINTAINER Pradeep Macharla <pradeep@seleniumframework.com>

EXPOSE 8081
