FROM ruby:2.6.3
MAINTAINER edznux@gmail.com

ARG NAME=one_gadget

RUN useradd -s /bin/bash -m ${NAME} && mkdir /home/${NAME}/workdir && chown ${NAME}:${NAME} /home/${NAME}/workdir
RUN gem install one_gadget
WORKDIR /home/${NAME}/workdir

USER ${NAME}

#CMD ["bash"]
ENTRYPOINT ["one_gadget"]

