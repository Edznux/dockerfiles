FROM ubuntu:18.04
ARG VERSION=1.7.36

# Install Java
RUN apt-get update && apt-get install -y wget ca-certificates software-properties-common && \
    add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install -y oracle-java8-installer libxext-dev libxrender-dev libxtst-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

# Create tester user
RUN useradd -s /bin/bash -m burp && mkdir /home/burp/workdir && chown burp:burp -R /home/burp/workdir
WORKDIR /home/burp/workdir
COPY scripts/ /home/burp/workdir
RUN wget "https://portswigger.net/burp/releases/download?product=community&version=$VERSION&type=jar" -O burp.jar && chmod +x /home/burp/workdir/start.sh
# Setup working directory
USER burp
CMD ["sh", "/home/burp/workdir/start.sh"]
