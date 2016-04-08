#!/usr/bin/env bash

FILE=casa-release-4.6.0-el6.tar.gz
URL=https://svn.cv.nrao.edu/casa/linux_distro/release/el6/$FILE

# make sure we are in the source folder
HERE=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $HERE

if [ ! -e "$FILE" ]; then
    curl -O  $URL
else
    echo "$FILE already downloaded."
fi
