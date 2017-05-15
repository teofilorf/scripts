#!/bin/bash

sudo apt update
sudo apt -y install mysql-server-5.7
sudo apt -y install apache2
sudo apt -y install php php-cgi libapache2-mod-php php-common php-pear php-mbstring
sudo apt -y install phpmyadmin php-mbstring php-gettext
sudo cp -f security.conf /etc/apache2/conf-enabled/
sudo cp -f dir.conf /etc/apache2/mods-enabled/