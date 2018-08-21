#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

if ! type "tree" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : tree"
    echo "-----------"

    snap install tree -y

    echo "-----------"
fi
