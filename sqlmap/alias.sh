#!/bin/bash

# Takes in $1 the python file to execute with sqlmap
# We use the workdir subdirectory to avoid dealing with .bash_history and other crap
sqlmap(){
	docker run --rm -it \
		-v "$(pwd):/home/sqlmap/workdir" \
		$DOCKER_REPO_PREFIX/sqlmap \
		$@
}
