#!/bin/bash

DIR=`dirname "$0"`
source $DIR/DOCKER_REPO

DOCKERFILES_DIR=`find $DIR/ -maxdepth 1 -type d | grep -v "\./\." | grep -v "^\.$"` 
for img in $DOCKERFILES_DIR; do
	. $DIR/$img/alias.sh
done

