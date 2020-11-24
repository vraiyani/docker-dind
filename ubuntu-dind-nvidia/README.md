# Ubuntu 18.04 Docker in Docker with NVIDIA container tools

This image has following:
* base image: `ubuntu:18.04`
* docker-ce : `5:19.03.12~3-0~ubuntu-bionic`
* nvidia-container-runtime: `3.2.0-1`
* nvidia-docker2: `2.3.0-1`
* docker-compose: `1.27.4`

It is available at https://hub.docker.com/r/vraiyani/ubuntu-dind-nv

## Build 

`docker build -t "vraiyani/ubuntu-dind-nv:stable" .`

## Pull 

`docker pull vraiyani/ubuntu-dind-nv:stable`
