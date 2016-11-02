#Docker files for casa 4.6

**WARNING**: This project has been replaced by KERN and is unmaintained: http://kernsuite.info/

These files are used to create a casapy docker image.

usage:

 * `make download` will download casa tarball
 * `make build` will make a docker image
 * `make upload` will upload image to docker hub (auth required)

Note that you don't need this repository to use the casa docker image, 
you can just do `docker run -ti radioastro/casa` which will implicitly
download the image from the docker hub.

