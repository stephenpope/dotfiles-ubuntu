#!/bin/bash

if ! type "go" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : go"
    echo "-----------"
    sudo apt -y install snapd
    sudo snap install --classic go

    echo "-----------"
fi
