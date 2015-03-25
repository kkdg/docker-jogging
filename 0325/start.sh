#!/bin/bash

echo "Running PHP-FPM..."

service php-fpm start


/install.sh

echo "Running nginx..."

service nginx start

