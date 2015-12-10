from radioastro/base:0.1
MAINTAINER gijs@pythonic.nl

RUN apt-get update && \
        apt-get update -y && \
        apt-get install -y libfreetype6 libsm6 libxi6 libxrender1 libxrandr2 libxfixes3 \
        libxcursor1 libxinerama1 libfontconfig1  libxslt1.1 xauth xvfb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# setup all required env variables
ENV VERSION 4.2.2
ENV RELEASE casapy-42.2.30986-1-64b
ENV USER root
ENV HOME /root
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/${RELEASE}/bin

# copy casas databundle to container
ADD ${RELEASE}.tar.gz /
RUN ln -s ${RELEASE} /casa

# copy empty casas config
ADD casa /root/.casa

WORKDIR /${RELEASE}/bin
CMD ["casa"]

