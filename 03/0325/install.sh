#!/bin/bash

clear

stty erase '^?'
    
echo -n "Database Host: "
read DBHOST
    
echo -n "Database Name: "
read DBNAME

echo -n "Database User: "
read DBUSER

echo -n "Database Password: "
read DBPASS

echo -n "Admin Password: "
read ADMIN_PASS

echo -n "Store URL (with trailing slash): "
read URL


echo
echo "Installing Magento..."
echo

php -f /var/www/install.php -- \
--license_agreement_accepted "yes" \
--locale "zh_CN" \
--timezone "China/Shanghai" \
--default_currency "CNY" \
--db_host "$DBHOST" \
--db_name "$DBNAME" \
--db_user "$DBUSER" \
--db_pass "$DBPASS" \
--url "$URL" \
--use_rewrites "yes" \
--use_secure "no" \
--secure_base_url "" \
--use_secure_admin "no" \
--admin_firstname "Store" \
--admin_lastname "Owner" \
--admin_email "degi.kwag@yg1.co.kr" \
--admin_username "admin" \
--admin_password "$ADMIN_PASS"

echo
echo "Finished installing the latest stable version of Magento without Sample Data"
echo

echo "+=================================================+"
echo "| MAGENTO LINKS"
echo "+=================================================+"
echo "|"
echo "| Store: $URL"
echo "| Admin: ${URL}admin/"
echo "|"
echo "+=================================================+"
echo "| ADMIN ACCOUNT"
echo "+=================================================+"
echo "|"
echo "| Username: admin"
echo "| Password: $ADMIN_PASS"
echo "|"
echo "+=================================================+"
echo "| DATABASE INFO"
echo "+=================================================+"
echo "|"
echo "| DB Host : $DBHOST"
echo "| Database: $DBNAME"
echo "| Username: $DBUSER"
echo "| Password: $DBPASS"
echo "|"
echo "+=================================================+"

exit
