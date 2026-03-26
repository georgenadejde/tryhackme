#!/bin/bash

# Checks if a file given as an arguments exists
# and if it has write permission
# -f check if file exists
# -w check if it is writable
# Also: 
# -d check if it is a directory
# -r check if is is readable

filename=$1

if [ -f "$filename" ] && [ -w "$filename" ]
then
		echo "There you are!" > $filename
else
		touch "$filename"
		echo "There you are" > $filename
fi
