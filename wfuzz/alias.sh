#!/bin/bash

# We use the workdir subdirectory to avoid dealing with .bash_history and other crap
wfuzz(){
	docker run --rm -it \
		-v "$(pwd):/home/wfuzz/workdir" \
		$DOCKER_REPO_PREFIX/wfuzz \
		$@
}
