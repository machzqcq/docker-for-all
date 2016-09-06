# Docker file for Ubuntu with RVM
# docker build -t "rubytestimage_alpine" -f rvm_jenkins_slave_alpine.dockerfile .
# Pull base image
FROM alpine:3.3

ENV RVM_USER    jenkins
ENV RVM_GROUP   rvm
ENV RVM_DEFAULT_RUBY 2.3.0
ENV SU_RVM      su - $RVM_USER -c


ENV JAVA_VERSION=8 \
    JAVA_UPDATE=92 \
    JAVA_BUILD=14 \
    JAVA_HOME="/usr/lib/jvm/default-jvm"

# Dependencies for getting/building
RUN apk update && \
    apk upgrade && \
    apk add gcc gnupg curl ruby bash procps musl-dev make linux-headers \
        zlib zlib-dev openssl openssl-dev libssl1.0 openssh git && \
    gem install rake -N

# User
RUN addgroup $RVM_GROUP && \
    adduser -h /home/$RVM_USER -g 'RVM User' -s /bin/bash -G $RVM_GROUP -D $RVM_USER
RUN "jenkins:jenkins" | chpasswd

# Download and Build
RUN $SU_RVM 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 && \
             curl -L -o stable.tar.gz https://github.com/rvm/rvm/archive/stable.tar.gz && \
             gunzip -c stable.tar.gz | tar xf - && \
             cd rvm-stable && ./scripts/install'
RUN $SU_RVM './.rvm/bin/rvm install 2.3.0 --disable-binary --movable --autolibs=0'

# RVM really doesn't like parts of Alpine (such as musl ldd)
# so you have to fake it
ADD /home/rvm/.profile /home/$RVM_USER/.profile
RUN chown $RVM_USER.$RVM_GROUP /home/$RVM_USER/.profile

# Tidy a little.
RUN $SU_RVM 'rm -rf rvm-stable stable.tar.gz' && \
    rm -rf /var/cache/apk/*

# Once you build your software on this base image, don't forget
# to remove gcc gnupg curl ruby musl-dev make linux-headers


RUN apk add --no-cache --virtual=build-dependencies wget ca-certificates && \
    cd "/tmp" && \
    wget --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
        "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-b${JAVA_BUILD}/jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" && \
    tar -xzf "jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" && \
    mkdir -p "/usr/lib/jvm" && \
    mv "/tmp/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE}" "/usr/lib/jvm/java-${JAVA_VERSION}-oracle" && \
    ln -s "java-${JAVA_VERSION}-oracle" "$JAVA_HOME" && \
    ln -s "$JAVA_HOME/bin/"* "/usr/bin/" && \
    rm -rf "$JAVA_HOME/"*src.zip && \
    rm -rf "$JAVA_HOME/lib/missioncontrol" \
           "$JAVA_HOME/lib/visualvm" \
           "$JAVA_HOME/lib/"*javafx* \
           "$JAVA_HOME/jre/lib/plugin.jar" \
           "$JAVA_HOME/jre/lib/ext/jfxrt.jar" \
           "$JAVA_HOME/jre/bin/javaws" \
           "$JAVA_HOME/jre/lib/javaws.jar" \
           "$JAVA_HOME/jre/lib/desktop" \
           "$JAVA_HOME/jre/plugin" \
           "$JAVA_HOME/jre/lib/"deploy* \
           "$JAVA_HOME/jre/lib/"*javafx* \
           "$JAVA_HOME/jre/lib/"*jfx* \
           "$JAVA_HOME/jre/lib/amd64/libdecora_sse.so" \
           "$JAVA_HOME/jre/lib/amd64/"libprism_*.so \
           "$JAVA_HOME/jre/lib/amd64/libfxplugins.so" \
           "$JAVA_HOME/jre/lib/amd64/libglass.so" \
           "$JAVA_HOME/jre/lib/amd64/libgstreamer-lite.so" \
           "$JAVA_HOME/jre/lib/amd64/"libjavafx*.so \
           "$JAVA_HOME/jre/lib/amd64/"libjfx*.so && \
    apk del build-dependencies && \
    rm "/tmp/"*
    
    # Standard SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]