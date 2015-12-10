#!/usr/bin/env bash

FILE=casa-release-4.3.1-el6.tar.gz
FILE=casapy-42.2.30986-1-64b.tar.gz
URL=https://svn.cv.nrao.edu/casa/linux_distro/old/$FILE

# make sure we are in the source folder
HERE=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $HERE

if [ ! -e "$FILE" ]; then
    curl -O  $URL
else
    echo "$FILE already downloaded."
fi
