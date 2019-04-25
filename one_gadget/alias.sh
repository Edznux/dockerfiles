#!/bin/bash

# Takes in $1 the python file to execute with one_gadget
# We use the workdir subdirectory to avoid dealing with .bash_history and other crap
one_gadget(){
	docker run --rm -it \
		-v "$(pwd):/home/one_gadget/workdir" \
		$DOCKER_REPO_PREFIX/one_gadget \
		$@
}
