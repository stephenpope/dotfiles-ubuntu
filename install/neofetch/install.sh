#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi


if ! type "neofetch" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : Neofetch"
    echo "-----------"

    apt-get install neofetch -y

    echo "-----------"
fi

echo "-----------"
echo "SETUP : Neofetch"
echo "-----------"

ln -sf `pwd`/10-neofetch /etc/update-motd.d/


