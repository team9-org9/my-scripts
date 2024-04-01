#!/bin/bash
bucketname=$1
prefix=$2
files=$( sudo find . -name "*.sh" )

for file in ${files[@]}; do
	aws s3 cp $file s3://$bucketname/$prefix/
done 
