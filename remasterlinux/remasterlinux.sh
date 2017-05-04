#!/bin/bash

cd tmp
mkdir remaster
wget -c https://sourceforge.net/projects/pinguy-os/files/ISO_Builder/pinguybuilder_4.3-8_all-beta.deb/download -O pinguybuilder.deb
sudo dpkg -i pinguybuilder.deb
sudo apt-get install -f
