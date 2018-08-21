#!/bin/bash

if ! type "git" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : git"
    echo "-----------"

    sudo apt-get install git-core -y

    echo "-----------"
fi
