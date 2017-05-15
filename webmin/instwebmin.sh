#!/bin/bash

echo "deb http://download.webmin.com/download/repository sarge contrib" > sudo /etc/apt/sources.list.d/webmin.list &&\
sudo apt update && \
sudo apt install -y webmin
