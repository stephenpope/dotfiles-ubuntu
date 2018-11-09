#!/bin/bash

if ! type "go" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : go (1.11.2)"
    echo "-----------"
    sudo wget https://dl.google.com/go/go1.11.2.linux-amd64.tar.gz
    sudo tar -xvf go1.11.linux-amd64.tar.gz
    sudo mv go /usr/local

    echo "-----------"
fi
