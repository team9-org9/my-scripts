#!/bin/bash
#This script will be used to demo automated s3 operations
echo -n "Please enter your s3 bucket name: "
read s3name
aws s3 mb s3://$s3name --region us-east-1
echo "enter your bucket prefix: " 
read dir 
mkdir $dir
echo "we are learning s3 bucket backend operations" > $dir/object.log
aws s3 cp $dir/object.log s3://$s3name/
