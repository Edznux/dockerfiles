#!/bin/bash

# Takes in $1 the python file to execute with angr
# We use the workdir subdirectory to avoid dealing with .bash_history and other crap
volatility(){
	docker run --rm -it \
		-v "$(pwd):/home/volatility/workdir" \
		$DOCKER_REPO_PREFIX/volatility \
		$@
}
