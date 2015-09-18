#!/bin/bash

sed "s/YOUR CHROMECAST APP ID HERE/$APP_ID/" public/js/gscreen-config.template.js > public/js/gscreen-config.js

/usr/bin/supervisord --nodaemon
