#!/bin/bash
if [ -z "$VIRTUAL_ENV" ]; then
    VIRTUAL_ENV=~/.virtualenvs/crosscompute
fi
export LD_LIBRARY_PATH=$VIRTUAL_ENV/lib:/usr/local/lib
export NODE_PATH=$VIRTUAL_ENV/lib/node_modules
mkdir -p $VIRTUAL_ENV/opt/node && cd $_
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=$VIRTUAL_ENV
make install
npm install -g browserify socket.io uglify-js
