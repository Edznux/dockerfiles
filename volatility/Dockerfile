FROM python:2.7
MAINTAINER edznux@gmail.com

ARG NAME=volatility
ENV YARA_VERSION=3.9.0
ENV DISTORM_VERSION=3.4.1

RUN apt-get update && \
	apt-get install -y pcregrep libpcre++-dev python-dev automake libtool make gcc tar

RUN useradd -s /bin/bash -m ${NAME} && mkdir /home/${NAME}/workdir && chown ${NAME}:${NAME} /home/${NAME}/workdir

# yara engine
RUN	pip install yara-python pycrypto && \
	wget https://github.com/VirusTotal/yara/archive/v${YARA_VERSION}.tar.gz -O yara-${YARA_VERSION}.tar.gz && \
	tar xf yara-${YARA_VERSION}.tar.gz && cd yara-${YARA_VERSION} && ./bootstrap.sh && \
	./configure && make && make install

# Distorm disassembleur something something
RUN	wget https://github.com/gdabah/distorm/archive/v${DISTORM_VERSION}.tar.gz -O distorm-${DISTORM_VERSION}.tar.gz && \
	tar xf distorm-${DISTORM_VERSION}.tar.gz && cd distorm-${DISTORM_VERSION} && python setup.py install

# ultra json (faster than default)
RUN pip install ujson

RUN pip install lxml openpyxl pillow

RUN git clone --depth=1 https://github.com/volatilityfoundation/volatility.git /home/${NAME}/volatility && cd /home/${NAME}/volatility && python setup.py install

USER ${NAME}
WORKDIR /home/${NAME}/workdir

#CMD ["bash"]
ENTRYPOINT ["python", "/home/volatility/volatility/vol.py"]
