# Nitrux Nomad Desktop Metapackage [![Build Status](https://travis-ci.org/nomad-desktop//nitrux-meta.svg?branch=master)](https://travis-ci.org/nomad-desktop//nitrux-meta)

This repository contains the source to create the `nomad-desktop` metapackage.

Run the "update" script to automatically generate new dependency
lists.  The result will be based on the published seed lists, filtered
by:

- The Packages files (nonexistent packages will be skipped)

- debootstrap (packages not yet added to debootstrap will not be added
  to ubuntu-base)

Push to Git before running ./update and pushing to Git again to create the package

# Issues
If you find problems with the contents of this repository please create an issue.

©2018 Nitrux Latinoamericana S.C.
