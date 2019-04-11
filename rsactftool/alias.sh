#!/bin/bash

# Takes in $1 the python file to execute with angr
# We use the workdir subdirectory to avoid dealing with .bash_history and other crap
rsactftool(){
	docker run --rm -it \
		-v "$(pwd):/home/rsactftool/workdir" \
		$DOCKER_REPO_PREFIX/rsactftool \
		$@
}
