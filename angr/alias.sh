#!/bin/bash

# Takes in $1 the python file to execute with angr
# We use the workdir subdirectory to avoid dealing with .bash_history and other crap
angr(){
	docker run --rm -it \
		-v "$(pwd):/home/angr/workdir" \
		$DOCKER_REPO_PREFIX/angr \
		$1
}
