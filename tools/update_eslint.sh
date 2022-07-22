#!/bin/bash
export PKG=eslint-config-airbnb
npm info "${PKG}@latest" peerDependencies --json | \
    command sed 's/[\{\},]//g ; s/: /@/g' | \
    xargs npm install --legacy-peer-deps --save-dev "${PKG}@latest"
