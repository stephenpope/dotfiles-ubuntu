#!/bin/bash

BASEDIR=`pwd`

for file in `find $BASEDIR -mindepth 2 -type f -name 'install.sh'` 
do
    echo "-----------"
    echo "Running : $file"
    echo "-----------"
    cd `dirname $file`
    bash `basename $file`
done
