FROM python:stretch
LABEL maintainer="edznux@gmail.com"

RUN apt-get update && \
	apt-get install -y \
		python3-crypto \
		mtd-utils \
		gzip \
		bzip2 \
		tar \
		arj \
		lhasa \
		p7zip \
		p7zip-full \
		cabextract \
		squashfs-tools \
		sleuthkit \
		default-jdk \
		lzop \
		srecord \
		git
	
RUN useradd -ms /bin/bash binwalk && mkdir /home/binwalk/workdir && chown binwalk:binwalk /home/binwalk/workdir
WORKDIR /home/binwalk/workdir

RUN git clone https://github.com/ReFirmLabs/binwalk && \
	cd binwalk && \
	python setup.py install
USER binwalk

ENTRYPOINT ["binwalk"]
