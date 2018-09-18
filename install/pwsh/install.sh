#!/bin/bash

if ! type "pwsh-preview" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : Powershell"
    echo "-----------"

    curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    sudo curl -o /etc/apt/sources.list.d/microsoft.list https://packages.microsoft.com/config/ubuntu/18.04/prod.list
    sudo apt-get update
    sudo apt-get install -y powershell

    echo "-----------"
fi
