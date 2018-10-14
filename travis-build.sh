#! /bin/sh

apt-get --yes update
apt-get --yes install wget equivs curl git

cd package/

DEPENDS=$( echo $(sed -e '/^#.*$/d; /^$/d; /^[[:space:]].*$/d' dependencies) | tr ' ' ',')

GIT_COMMIT=$(git rev-parse --short HEAD)

echo "
Section: misc
Priority: optional
Homepage: https://nxos.org

Package: nomad-desktop
Version: 1.4.3.6-${GIT_COMMIT}
Maintainer: Luis Lavaire <llavaire01@gmail.com>
Depends: $DEPENDS
Architecture: amd64
Description: Nomad Desktop metapackage for Nitrux.
" > configuration

equivs-build configuration
