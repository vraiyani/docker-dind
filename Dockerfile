FROM ubuntu:18.04

RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables 
    
RUN curl -sSL https://get.docker.com/ | sh

VOLUME /var/lib/docker
