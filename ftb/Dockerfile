FROM openjdk:8-stretch

MAINTAINER edznux@gmail.com

ARG NAME=ftb

RUN apt-get update && apt-get install wget
RUN useradd -s /bin/bash -m ${NAME} && mkdir /home/${NAME}/ftb && chown ${NAME}:${NAME} /home/${NAME}/ftb
RUN wget http://ftb.forgecdn.net/FTB2/launcher/FTB_Launcher.jar -O /home/${NAME}/FTB_Launcher.jar

USER ${NAME}
WORKDIR /home/${NAME}/ftb

CMD ["java", "-jar", "/home/${NAME}/FTB_Launcher.jar"]
