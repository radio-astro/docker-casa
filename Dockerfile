FROM centos:centos6
MAINTAINER gijs@pythonic.nl

ENV RELEASE=casa-release-4.5.0-el6
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/${RELEASE}/bin
ENV USER root

ADD ${RELEASE}.tar.gz /

RUN yum install -y libpng freetype libSM libXi libXrender libXrandr libXfixes \
    libXcursor fontconfig libxslt which auth xorg-x11-server-Xvfb libXinerama

ADD casa /root/.casa

WORKDIR /${RELEASE}/bin
cmd /${RELEASE}/bin/casa

