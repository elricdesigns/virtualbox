#!/usr/bin/env bash

apt-get update
apt-get install -y apache2 php5 php5-mysql nodejs npm

#setup apache

if [ ! -h /var/www ];
then
    a2enmod rewrite

    sed -i '/AllowOverride None/c AllowOverride All' /etc/apache2/sites-available/default

    service apache2 restart
fi