FROM centos:centos6
MAINTAINER gijs@pythonic.nl

RUN yum install -y libpng freetype libSM libXi libXrender libXrandr libXfixes \
    libXcursor fontconfig libxslt which auth xorg-x11-server-Xvfb libXinerama

ENV VERSION=4.5.0
ENV RELEASE=casa-release-${VERSION}-el6
ENV USER root

ADD ${RELEASE}.tar.gz /

ADD casa /root/.casa

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/${RELEASE}/bin
WORKDIR /${RELEASE}/bin
cmd /${RELEASE}/bin/casa

