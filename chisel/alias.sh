#!/usr/bin/env bash

# Pass all arguments to the docker container
# We use the workdir subdirectory to avoid dealing with .bash_history and other crap
chisel(){
	docker run --rm -it \
		-v "$(pwd):/home/chisel/workdir" \
		--net="host" \
		$DOCKER_REPO_PREFIX/chisel \
		$@
}
