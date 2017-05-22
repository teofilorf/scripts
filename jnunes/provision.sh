#!/bin/bash


#adicionar repositorios
sudo add-apt-repository -y ppa:webupd8team/java && sudo add-apt-repository -y ppa:emoraes25/cid && sudo apt-get update && \

#instalar pacotes
sudo apt install -y cups-pdf cid-base cid cid-gtk rdesktop yad && \
sudo apt install -y oracle-java8-set-default && \
sudo apt upgrade -y && \

sudo dpkg -i files/ampagent-6.3.314.ubuntu.64.deb ; sudo apt install -f -y && \
wget -c https://download.anydesk.com/linux/anydesk_2.9.0-1_amd64.deb?_ga=2.246307844.1450319514.1494517567-689502156.1494517567 -O anydesk.deb && \
sudo dpkg -i anydesk.deb ; sudo apt install -f -y && \
wget -c https://download.teamviewer.com/download/teamviewer_i386.deb && \
sudo dpkg -i teamviewer_i386.deb ; sudo apt install -f -y && \

#Download zimbra
sudo mkdir /home/zdinstall && \
sudo chmod -R 777 /home/zdinstall && \
sudo wget -c https://s3.amazonaws.com/files.zimbra.com/downloads/zdesktop/7.3.0/b13060/zdesktop_7_3_0_ga_b13060_20170410030557_linux_x64.tgz && \
sudo tar -zxvf zdesktop_7_3_0_ga_b13060_20170410030557_linux_x64.tgz -C /home/zdinstall && \
sudo cp -f zimbra/config.txt /home/zdinstall/ && \
sudo chmod -R 777 /home/zdinstall/ && \
 
#post install
sudo mv /etc/mdm/mdm.conf /etc/mdm/mdm.conf.bkp && \
sudo cp -f files/mdm.conf /etc/mdm/ && \
sudo cp -f files/amp.conf /var/dell/kace/amp.conf && \
sudo /opt/dell/kace/bin/AMPTools start && \
sudo cp files/kace.service /etc/systemd/system/ && \
sudo systemctl enable kace.service && \
sudo cp files/linux-brprinter-installer-2.1.1-1 /usr/local/bin/brprinter && \
sudo chmod +x /usr/local/bin/brprinter && \
sudo cp files/Remote_desktop_connection_icon.png /usr/share/icons/ && \
sudo cp files/grdesktop.sh /usr/local/bin/ && \
sudo chmod +x /usr/local/bin/grdesktop.sh && \
sudo rm -rf /etc/skel && \
sudo cp -rf files/skel /etc/ && \

#ingressar dominio
sudo cid-gtk
