#!/bin/bash

# Takes in $1 the python file to execute with angr
# We use the workdir subdirectory to avoid dealing with .bash_history and other crap
ftb(){
	docker run --rm -it \
		--network="host" \
		-e DISPLAY=$DISPLAY \
		-v "$HOME/ftb:/home/ftb/ftb" \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		$DOCKER_REPO_PREFIX/ftb \
		$@
}
