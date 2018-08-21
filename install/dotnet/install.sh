#!/bin/bash

if ! type "dotnet" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : dotnet"
    echo "-----------"

    wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
    sudo dpkg -i packages-microsoft-prod.deb

    sudo apt-get -y install apt-transport-https
    sudo apt-get update
    sudo apt-get -y install dotnet-sdk-2.1
    
    echo "-----------"
fi
