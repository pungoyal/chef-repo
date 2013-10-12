# Base
#
# VERSION               0.0.2

FROM       ubuntu
MAINTAINER Puneet Goyal "puneet@codeignition.co"

RUN apt-get install -y pwgen openssh-server

RUN mkdir /var/run/sshd
RUN /usr/sbin/sshd

RUN echo "root:root" | chpasswd

EXPOSE 22

# ADD docker /docker
# CMD ["/bin/bash", "/docker/startup.sh"] 
