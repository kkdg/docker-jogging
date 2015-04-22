#!/bin/bash

echo "Running PHP-FPM..."

service php-fpm start



echo "Running nginx..."

service nginx start 

/install.sh

service nginx stop

nginx -g 'daemon off;'
