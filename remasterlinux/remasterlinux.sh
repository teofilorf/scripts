#!/bin/bash

diretorio="/tmp/remaster"
mkdir -p $diretorio
wget -c https://sourceforge.net/projects/pinguy-os/files/ISO_Builder/pinguybuilder_4.3-8_all-beta.deb/download -O $diretorio/pinguybuilder.deb
sudo dpkg -i $diretorio/pinguybuilder.deb
sudo apt-get install -f
