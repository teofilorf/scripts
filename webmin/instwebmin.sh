#!/bin/bash

echo "deb http://download.webmin.com/download/repository sarge contrib" > sudo /etc/apt/sources.list.d/webmin.list &&\
wget http://www.webmin.com/jcameron-key.asc && \
apt-key add jcameron-key.asc && \
sudo apt update && \
sudo apt install -y webmin
