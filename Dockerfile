FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install  -y postgresql-server-dev-12 \
                        libxml2-dev \
                        libxslt-dev \
                        python3-dev \
                        pkg-config \
                        libfreetype6-dev \
                        postgresql \
                        patch \
                        python3-pip \
                        unoconv \
                        libpng-dev \
                        libjpeg8-dev

RUN apt-get install  -y sudo \
                        wget \
                        net-tools \
                        vim \
                        telnet

RUN echo 'ping localhost &' > /bootstrap.sh
RUN echo 'sleep infinity' >> /bootstrap.sh
RUN chmod +x /bootstrap.sh

CMD /bootstrap.sh
