# Docker-gulp

A generic container for gulp:

* derived FROM npm:alpine
* let's you install anything before running gulp as a daemon

You can use it this way:

    docker run -it --rm -v `pwd`:/var/www/html lrkwz/gulp "npm install gulp gulp-sass gulp-install"

or in docker-compose.yml:

    version: '2'
    services:
      gulp:
        image: lrkwz/gulp
        volumes:
        - .:/var/www/html
        command: npm install gulp gulp-sass gulp-install
