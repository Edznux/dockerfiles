#!/bin/bash

# find all directory (without recursion) that are not hidden (starting with "./.") and without "."
DOCKERFILES_DIR=`find . -maxdepth 1 -type d | grep -v "\./\." | grep -v "^\.$"` 
for img in $DOCKERFILES_DIR; do
	echo "[-] $img"
	if [ ! -f "$img/update-dockerfile.sh" ]; then
		echo "	[!] File $img/update-dockerfile.sh doesn't exist"
		continue
	fi
	echo "[!] Looking for update for $img"
	$img/update-dockerfile.sh
	
	# check if the file and its backup are the same
	# we ignore the stdout output because we don't care for now.
	diff $img/Dockerfile{,.bak} &>/dev/null
	isTheSame=$?
	if [[ $isTheSame -eq 0 ]]; then
		rm $img/Dockerfile.bak
	else
		echo "	[!] $img has been updated!" 
	fi


done
