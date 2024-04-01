#!/bin/bash

files=$( sudo find . -name "*.sh" )

for file in ${files[@]}; do
	cp $file /tmp
done 
