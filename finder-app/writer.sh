#!/bin/bash
writefile=$1
writestr=$2

if [ $# != 2 ]
then
    echo "Missing arguments"
    exit 1
fi

touch $writefile
status=$?

if [ $status == 0 ]
then
    echo "writing $writestr to $writefile"
    echo $writestr > $writefile
else
    echo "Failed to create file"
    exit 1
fi
