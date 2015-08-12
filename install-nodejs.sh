#!/bin/bash
source ~/.virtualenvs/crosscompute/bin/activate
export LD_LIBRARY_PATH=$VIRTUAL_ENV/lib:/usr/local/lib
export NODE_PATH=$VIRTUAL_ENV/lib/node_modules
mkdir $VIRTUAL_ENV/opt/node && cd $_
curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
./configure --prefix=$VIRTUAL_ENV
make install
npm install -g browserify socket.io uglify-js
