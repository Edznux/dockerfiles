#!/bin/bash

source DOCKER_REPO

DOCKERFILES_DIR=`find . -maxdepth 1 -type d | grep -v "\./\." | grep -v "^\.$"`
for img in $DOCKERFILES_DIR; do
	echo "docker build -t $DOCKER_REPO_PREFIX/$(basename $img) $img/"
	docker build -t $DOCKER_REPO_PREFIX/$(basename $img) $img/
done
