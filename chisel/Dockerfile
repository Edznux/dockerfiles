# Dockerfile modified from https://github.com/jpillora/chisel/blob/master/Dockerfile (d96b66e)
# build stage
FROM golang:alpine AS build-env
LABEL maintainer="edznux@gmail.com"
RUN apk update && apk add git
ENV CGO_ENABLED 0
WORKDIR /src
RUN git clone --depth=1 https://github.com/jpillora/chisel && \
	cd chisel && \
	go build \
    -mod vendor \
    -ldflags "-X github.com/jpillora/chisel/share.BuildVersion=$(git describe --abbrev=0 --tags)" \
    -o chisel

# container stage
FROM alpine:latest
LABEL maintainer="edznux@gmail.com"

ARG NAME=chisel

RUN apk update && apk add --no-cache ca-certificates
RUN adduser -D ${NAME} && mkdir -p /home/${NAME}/workdir && chown -R ${NAME} /home/${NAME}
COPY --from=build-env /src/chisel /home/chisel/chisel
RUN chown ${NAME}:${NAME} -R /home/chisel/chisel
USER ${NAME}
WORKDIR /home/${NAME}/workdir
#CMD ["/bin/sh"]
ENTRYPOINT ["/home/chisel/chisel/chisel"]
