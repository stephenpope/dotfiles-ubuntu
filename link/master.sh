#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

if ! type "stow" > /dev/null; then
   
    echo "-----------"
    echo INSTALLING: GNU Stow
    echo "-----------"    
    
    apt-get install stow -y

    echo "-----------"
fi

for dir in `find . -maxdepth 1 -type d \( ! -name . \)`
do
    DIRECTORY=`basename $dir`
    echo "Deploying : $DIRECTORY"
	stow $DIRECTORY -t ~/
done
