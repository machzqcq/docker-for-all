# docker built -t "ruby21_image" -f ruby21_jenkins_slave.dockerfile .
FROM ruby:2.1

MAINTAINER pradeep@seleniumframework.com

# Env
ENV PHANTOMJS_VERSION 1.9.7

# Install phantomjs and set in path
RUN apt-get update && \
  apt-get install -y vim git wget libfreetype6 libfontconfig bzip2 

# Install bundler package manager for gems
RUN gem install bundler -v 1.12.1

#Enable as jenkins slave
# Install a basic SSH server
RUN apt-get install -y openssh-server
RUN sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd
RUN mkdir -p /var/run/sshd

RUN apt-get install -y openjdk-7-jdk

# Add user jenkins to the image
RUN groupadd jenkins
RUN useradd -m jenkins  -s /bin/bash -p jenkins -g jenkins -G staff
RUN chown -R jenkins:jenkins /usr/local
# Set password for the jenkins user (you may want to alter this).
#RUN echo "jenkins:jenkins" | chpasswd

# Standard SSH port
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

