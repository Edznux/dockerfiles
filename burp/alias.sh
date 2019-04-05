#!/bin/bash

burp(){
	_=`docker inspect burp`
	alreadyExist=$?

	if [ $alreadyExist -eq 0 ]; then
		docker start --interactive burp
		return 0
	fi

	docker run -it \
		--network="host" \
		-e DISPLAY=unix$DISPLAY \
		-v $HOME/.BurpSuite/:/home/burp/.BurpSuite/ \
		-v /tmp/.X11-unix:/tmp/.X11-unix \
		--name=burp \
		$DOCKER_REPO_PREFIX/burp \
		$@
}

