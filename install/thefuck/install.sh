#!/bin/bash

if ! type "fuck" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : thefuck"
    echo "-----------"

    sudo apt install python3-dev python3-pip -y
    sudo -H pip3 install thefuck 

    echo "-----------"
fi
