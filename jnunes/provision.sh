#!/bin/bash

#atulaizar
sudo apt update && sudo apt upgrade -y

#adicionar repositorios
sudo add-apt-repository -y ppa:emoraes25/cid && sudo apt-get update 

#instalar pacotes
sudo apt install -y cups-pdf cid-base cid cid-gtk rdesktop yad 
sudo dpkg -i files/ampagent-6.3.314.ubuntu.64.deb
sudo apt install -f

#post install
sudo mv /etc/mdm/mdm.conf /etc/mdm/mdm.conf.bkp
sudo cp -f files/mdm.conf /etc/mdm/
sudo cp -f files/amp.conf /var/dell/kace/amp.conf
sudo /opt/dell/kace/bin/AMPTools start
sudo cp files/kace.service /etc/systemd/system/
sudo systemctl enable kace.service
sudo cp files/linux-brprinter-installer-2.1.1-1 /usr/local/bin/brprinter
sudo chmod +x /usr/local/bin/brprinter
sudo cp files/Remote_desktop_connection_icon.png /usr/share/icons/
sudo cp files/grdesktop.sh /usr/local/bin/
sudo chmod +x /usr/local/bin/grdesktop.sh
sudo rm -rf /etc/skel
sudo cp -rf files/skel /etc/

#ingressar dominio
sudo cid-gtk
