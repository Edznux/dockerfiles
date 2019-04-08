FROM ubuntu:18.04
MAINTAINER edznux@gmail.com

ARG NAME=checksec

RUN apt-get update && apt-get upgrade -y&& \
	apt-get install -y bash git binutils build-essential file
RUN useradd -s /bin/bash -m ${NAME} && mkdir /home/${NAME}/workdir && chown ${NAME}:${NAME} /home/${NAME}/workdir
RUN git clone --depth 1 https://github.com/slimm609/checksec.sh /home/checksec/checksec.sh

USER ${NAME}
WORKDIR /home/${NAME}/workdir
ENTRYPOINT ["/home/checksec/checksec.sh/checksec"]
