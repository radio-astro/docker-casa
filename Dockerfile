from radioastro/base:0.1
MAINTAINER gijs@pythonic.nl

RUN apt-get update && \
        apt-get update -y && \
        apt-get install -y libfreetype6 libsm6 libxi6 libxrender1 libxrandr2 libxfixes3 \
            libxcursor1 libxinerama1 libfontconfig1  libxslt1.1 xauth && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV VERSION=4.4.0
ENV RELEASE=casa-release-${VERSION}-el6
ENV USER root

ADD ${RELEASE}.tar.gz /

ADD casa /root/.casa

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/${RELEASE}/bin
WORKDIR /${RELEASE}/bin
cmd /${RELEASE}/bin/casa

