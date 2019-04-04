from python:stretch
maintainer edznux@gmail.com

run apt-get update && \
	apt-get install -y python3-dev libffi-dev build-essential virtualenvwrapper python3-pip
RUN useradd -s /bin/bash -m angr && mkdir /home/angr/workdir && chown angr:angr /home/angr/workdir
RUN pip install angr
USER angr
WORKDIR /home/angr/workdir
CMD ["python", "exploit.py"]
