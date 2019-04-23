#!/bin/bash

# DIR=`dirname "$0"` # TOFIX
DIR="$HOME/dockerfiles/" # TOFIX
source $DIR/DOCKER_REPO

DOCKERFILES_DIR=`find $DIR -maxdepth 1 -type d | grep -v "\./\." | grep -v "^$DIR$" | grep -v "\.git"` 
for img in $DOCKERFILES_DIR; do
	. $img/alias.sh
done

