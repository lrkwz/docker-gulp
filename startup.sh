#!/bin/sh

#npm install gulp
#npm install gulp-sass
#npm install --save-dev gulp-install
npm install
#npm install gulp --save-dev
if [ ! -f ./gulpfile.js ]; then
    touch gulpfile.js
fi

if [ "$@" ]; then
    echo $@
    sh -c "$@"
fi
gulp
