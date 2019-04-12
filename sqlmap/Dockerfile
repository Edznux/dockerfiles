FROM python:2.7
MAINTAINER edznux@gmail.com

ARG NAME=sqlmap

RUN useradd -s /bin/bash -m ${NAME} && mkdir /home/${NAME}/workdir && chown ${NAME}:${NAME} /home/${NAME}/workdir
RUN git clone --depth=1 https://github.com/sqlmapproject/sqlmap /home/${NAME}/sqlmap
WORKDIR /home/${NAME}/workdir

USER ${NAME}

# CMD ["bash"]
ENTRYPOINT ["python", "/home/sqlmap/sqlmap/sqlmap.py"]

