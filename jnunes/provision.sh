#!/bin/bash

#atulaizar
#sudo apt update && sudo apt upgrade -y

#adicionar repositorios
sudo add-apt-repository -y ppa:emoraes25/cid && sudo apt-get update 

#instalar pacotes
#sudo apt install -y cups-pdf thunderbird thunderbird-locale-pt-br cid-base cid cid-gtk rdesktop
sudo apt install -y cid-base cid cid-gtk
#ingressar dominio
sudo cid-gtk

sudo reboot