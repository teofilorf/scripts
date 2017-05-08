#!/bin/bash

#adicionar repositorios
sudo add-apt-repository -y ppa:emoraes25/cid && sudo apt-get update 

#instalar pacotes
sudo apt install -y cid-base cid cid-gtk

#comando para ingressar
#cid joindomain domain= user= pass=