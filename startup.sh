#!/bin/sh

#npm install gulp
#npm install gulp-sass
#npm install --save-dev gulp-install
npm install gulp -D
if [ ! -f ./gulpfile.js ]; then
    touch gulpfile.js
fi

if [ "$@" ]; then
    echo $@
    sh -c "$@"
fi
gulp
