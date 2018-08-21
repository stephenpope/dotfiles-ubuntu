#!/bin/bash

if ! type "neofetch" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : Neofetch"
    echo "-----------"

    sudo apt-get install neofetch -y

    echo "-----------"
fi

echo "-----------"
echo "SETUP : Neofetch"
echo "-----------"

sudo ln -sf `pwd`/10-neofetch /etc/update-motd.d/


