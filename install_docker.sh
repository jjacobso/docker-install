#!/bin/bash

USER=ubuntu
VERSION=1.9.1

# install docker on system with systemd
wget https://get.docker.com/builds/Linux/x86_64/docker-${VERSION}
sudo mv docker-${VERSION} /usr/bin/docker
sudo chmod +x /usr/bin/docker
cd /etc/systemd/system
sudo wget https://raw.githubusercontent.com/docker/docker/v${VERSION}/contrib/init/systemd/docker.service
sudo wget https://raw.githubusercontent.com/docker/docker/v${VERSION}/contrib/init/systemd/docker.socket
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl start docker
