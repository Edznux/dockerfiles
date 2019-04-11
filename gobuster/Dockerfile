FROM golang:latest
MAINTAINER edznux@gmail.com

ARG NAME=gobuster

RUN apt-get update && apt-get upgrade -y && \
	apt-get install -y bash git
RUN useradd -s /bin/bash -m ${NAME} && mkdir /home/${NAME}/workdir && chown ${NAME}:${NAME} /home/${NAME}/workdir
RUN git clone --depth 1 -b v3.0-working https://github.com/OJ/gobuster /home/${NAME}/${NAME} && cd /home/${NAME}/${NAME} && go install
USER ${NAME}
WORKDIR /home/${NAME}/workdir
#CMD ["bash"]
ENTRYPOINT ["gobuster"]

