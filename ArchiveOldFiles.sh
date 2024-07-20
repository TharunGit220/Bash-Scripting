#!/bin/bash

filepath="/mnt/c/TharunUppala/Java/House"

Print(){
	echo "Files over 20KB:"
     echo "$count have to be compressed"
     echo $(find "$filepath" -size +20 -type f)
}

# Check if the filepath exsist 
if [ ! -d $filepath ] 
then	
	echo "Directory does not exsist $filepath"
	exit 1
fi

#Check how many files are over the size of 20KB
count=$(find $filepath -size +20 -type f | wc -l)

if (( $count > 0 ))
then

# Make an archive folder 
if [ ! -d $filepath/archive ]
then
	mkdir $filepath/archive 
	echo "You didnt have an archive folder so I made one "
fi

#Caling a function to print the list of files that are over the size of 20KB
Print

# Compress and move the files into arhive folder 
for i in $(find $filepath -size +20 -type f)
do
	gzip $i || exit 1 
	mv $i.gz $filepath/archive || exit 1
	echo "Compressed the files that were over the size of 20KB and moved them to archive file"
done
else 
	echo "All you your file are under 20KB"
fi
