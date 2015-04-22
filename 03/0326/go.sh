#!/bin/bash
sudo docker run -td --name mariadb -e USER=kkdg -e PASS=1234 paintedfox/mariadb
sudo docker run --name memcached -d -p 11211 sylvainlasnier/memcached
sudo docker run -p 80:80 --link mariadb:db --link memcached:cache -td magento
