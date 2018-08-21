#!/bin/bash

if ! type "tree" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : tree"
    echo "-----------"

    sudo apt-get install tree -y

    echo "-----------"
fi
