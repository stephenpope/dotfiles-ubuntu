#!/bin/bash

if ! type "docker" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : docker"
    echo "-----------"

    sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    
    sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

    sudo apt update

    sudo apt install -y docker-ce

    sudo systemctl status docker

    curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

    sudo chmod +x /usr/local/bin/docker-compose

    curl -L https://github.com/docker/machine/releases/download/v0.14.0/docker-machine-`uname -s`-`uname -m` -o /usr/local/bin/docker-machine 

    sudo chmod +x /usr/local/bin/docker-machine

    echo "-----------"
fi
