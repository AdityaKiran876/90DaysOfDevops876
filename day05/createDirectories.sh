#!/bin/bash

echo "Creating $3 directories "

if [ $# -eq 0 ]
then
    echo "No arguments supplied"
    echo "Usage: ./createDirectories.sh day 1 90"
fi

for (( i=$2 ; i<=$3; i++ ));
do
	mkdir $1$i
done


