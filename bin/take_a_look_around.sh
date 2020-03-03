#!/usr/bin/bash

#TODO add the possibility to exclude folders

# Given a Folder in input return:
# Number of files
# Number of sub-folders
# Total size

for dir in $1; do 
	printf "%-9s: %5d files in %5d folders, " \
	"$dir" \
	$(find $dir -type f | wc -l) \
	$(find $dir -type d | wc -l); \
	du -sh $dir | cut -f 1
done

