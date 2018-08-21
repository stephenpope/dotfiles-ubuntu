#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

if ! type "git" > /dev/null; then
    
    echo "-----------"
    echo "INSTALL : git"
    echo "-----------"

    apt-get install git-core -y

    echo "-----------"
fi

echo "-----------"
echo "SETUP : git"
echo "-----------"

git config --global user.name "Stephen Pope"
git config --global user.email github@stephenpope.co.uk
