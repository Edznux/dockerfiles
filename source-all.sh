#!/bin/bash

source DOCKER_REPO

DOCKERFILES_DIR=`find . -maxdepth 1 -type d | grep -v "\./\." | grep -v "^\.$"` 
for img in $DOCKERFILES_DIR; do
	. $img/alias.sh
done

