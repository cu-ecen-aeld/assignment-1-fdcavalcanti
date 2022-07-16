#!/bin/bash
filesdir=$1
searchstr=$2

if [ $# != 2 ]
then
    echo "Missing arguments"
    exit 1
elif [ ! -d $filesdir ]
then
    echo "Invalid directory"
    exit 1
fi

num_files=$(find $filesdir -type f | wc -l)
matches=$(grep -r $searchstr $filesdir | wc -l)

output_msg="The number of files are $num_files and the number of matching lines are $matches"
echo $output_msg
