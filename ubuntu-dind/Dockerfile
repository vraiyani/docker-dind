FROM ubuntu:18.04

RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables \
    gnupg-agent \
    software-properties-common
    
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

RUN apt-get update && apt-get install -y \
    docker-ce=5:19.03.12~3-0~ubuntu-bionic \
    docker-ce-cli=5:19.03.12~3-0~ubuntu-bionic \
    containerd.io

VOLUME /var/lib/docker