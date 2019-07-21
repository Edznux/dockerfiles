#!/usr/bin/env bash

# Pass all arguments to the docker container
# We use the workdir subdirectory to avoid dealing with .bash_history and other crap
ropper(){
	docker run --rm -it \
		-v "$(pwd):/home/ropper/workdir" \
		$DOCKER_REPO_PREFIX/ropper \
		$@
}
