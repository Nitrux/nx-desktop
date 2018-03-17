#! /bin/sh

cd package/

DEPENDS=$( echo $(sed -e '/^#.*$/d; /^$/d; /^[[:space:]].*$/d' dependencies) | tr ' ' ',')

echo "
Section: misc
Priority: optional
Homepage: https://nxos.org

Package: nxos-meta
Version: 1.1.0
Maintainer: Luis Lavaire <llavaire01@gmail.com>
Depends: $DEPENDS
Architecture: amd64
Description: Nomad desktop metapackage.
" > configuration

equivs-build configuration

