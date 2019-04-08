#!/bin/bash

source DOCKER_REPO

DOCKERFILES_DIR=`find . -maxdepth 1 -type d | grep -v "\./\." | grep -v "^\.$"`

build(){
	img="$1"
	echo "docker build -t $DOCKER_REPO_PREFIX/$(basename $img) $img/"
	docker build -t $DOCKER_REPO_PREFIX/$(basename $img) $img/
}

if [ $# -eq 1 ]; then
	echo "Yes, 1"
	build "$1"
else
	echo "Building all !"
	for img in $DOCKERFILES_DIR; do
		build "$img"
	done
fi



