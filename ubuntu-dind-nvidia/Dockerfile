FROM ubuntu:18.04

RUN apt-get update -qq && apt-get install --no-install-recommends -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    iptables \
    iproute2 \
    lxc \
    net-tools \
    software-properties-common \
    sshpass \
    vim
    
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# install nvidia docker and nvidia-container-runtime to allow dind to be able to pass gpus to child containers
RUN curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | apt-key add -
RUN curl -s -L https://nvidia.github.io/nvidia-docker/$(. /etc/os-release;echo $ID$VERSION_ID)/nvidia-docker.list | tee /etc/apt/sources.list.d/nvidia-docker.list
RUN apt-get update && apt-get install -y \
    nvidia-container-runtime=3.2.0-1 \
    nvidia-docker2=2.3.0-1 \
    docker-ce=5:19.03.12~3-0~ubuntu-bionic \
    docker-ce-cli=5:19.03.12~3-0~ubuntu-bionic \
    containerd.io

RUN curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN chmod +x /usr/local/bin/docker-compose
COPY ./daemon.json /etc/docker
ENV NVIDIA_DRIVER_CAPABILITIES=all
