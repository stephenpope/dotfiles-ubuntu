#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

for file in `find . -mindepth 2 -type f -name 'install.sh'` 
do
    echo "-----------"
    echo "Installing : $file"
    echo "-----------"
    cd `dirname $file`
    bash `basename $file`
done
