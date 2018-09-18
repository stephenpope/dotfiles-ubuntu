#!/bin/bash

if ! type "dotnet" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : dotnet"
    echo "-----------"

    curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    sudo curl -o /etc/apt/sources.list.d/microsoft.list https://packages.microsoft.com/config/ubuntu/18.04/prod.list

    sudo apt-get -y install apt-transport-https
    sudo apt-get update
    sudo apt-get -y install dotnet-sdk-2.1
    
    echo "-----------"
fi
