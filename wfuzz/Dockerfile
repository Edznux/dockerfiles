FROM alpine:edge
LABEL maintainer "Ilya Glotov <ilya@ilyaglotov.com>"

RUN apk --update --no-cache add python3 py-curl git && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
	rm -r /root/.cache

RUN adduser -D wfuzz && mkdir -p /home/wfuzz/workdir && chown -R wfuzz /home/wfuzz
RUN git clone --branch=master --depth=1 https://github.com/xmendez/wfuzz.git /home/wfuzz/wfuzz && \
	cd /home/wfuzz/wfuzz && \
	pip3 install -r "requirements.txt"
USER wfuzz
WORKDIR /home/wfuzz/wfuzz

ENTRYPOINT ["./wfuzz"]
