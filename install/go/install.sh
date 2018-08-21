#!/bin/bash

if ! type "go" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : go"
    echo "-----------"

    sudo snap install --classic go

    echo "-----------"
fi
