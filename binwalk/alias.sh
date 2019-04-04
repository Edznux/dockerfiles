#!/bin/bash

# Takes in $1 the python file to execute with binwalk
# We use the workdir subdirectory to avoid dealing with .bash_history and other crap
binwalk(){
	docker run --rm -it \
		-v "$(pwd):/home/binwalk/workdir" \
		$DOCKER_REPO_PREFIX/binwalk \
		$1
}
