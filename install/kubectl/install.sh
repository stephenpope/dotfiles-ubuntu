#!/bin/bash

if ! type "kubectl" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : kubectl"
    echo "-----------"

    sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
    sudo chmod +x ./kubectl
    sudo mv ./kubectl /usr/local/bin/kubectl

    echo "-----------"
fi
