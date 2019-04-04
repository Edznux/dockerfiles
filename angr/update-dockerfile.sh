#!/bin/bash

file=`dirname $0`/Dockerfile

# save the old dockerfile "just in case" (even tho it's in the git history)
if [ -f $file ]; then
	echo "	[*] Backing up the old file"
	mv $file{,.bak}
fi

#wget -q https://raw.githubusercontent.com/angr/angr/master/Dockerfile -O $file
