FROM python:3.7-alpine
LABEL maintainer="edznux@gmail.com"

ARG NAME=ropper

RUN apk add --no-cache git gcc musl-dev libffi-dev bash cmake capstone make build-base
RUN adduser -D -u 1000 ${NAME} && mkdir /home/${NAME}/workdir && chown ${NAME}:${NAME} /home/${NAME}/workdir

WORKDIR /home/${NAME}/
ENV PATH="/home/ropper/.local/bin:${PATH}"

RUN pip install \
	capstone \
	filebytes \
	keystone-engine \
	pyvex \
	&& git clone https://github.com/sashs/Ropper \
 	&& git clone https://github.com/Z3Prover/z3 \
	&& cd z3 \
	&& python scripts/mk_make.py \
	&& cd build \
	&& make -j $(nproc) \
	&& make install \
	&& cd /home/${NAME}/Ropper \
	&& python setup.py install

USER ${NAME}

CMD ["/bin/sh"]
#ENTRYPOINT ["python","/home/ropper/Ropper/Ropper.py"]
