FROM python:2.7
MAINTAINER edznux@gmail.com

ARG NAME=rsactftool

RUN apt-get update && \
	apt-get install -y build-essential libgmp3-dev libmpc-dev

RUN useradd -s /bin/bash -m ${NAME} && mkdir /home/${NAME}/workdir && chown ${NAME}:${NAME} /home/${NAME}/workdir
RUN git clone https://github.com/Ganapati/RsaCtfTool.git /home/${NAME}/RsaCtfTool && cd /home/${NAME}/RsaCtfTool && pip install -r "requirements.txt"
WORKDIR /home/${NAME}/workdir

#USER ${NAME}

# CMD ["bash"]
ENTRYPOINT ["python", "/home/rsactftool/RsaCtfTool/RsaCtfTool.py"]

