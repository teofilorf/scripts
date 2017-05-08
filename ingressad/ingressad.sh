#!/bin/bash

#adicionar repositorios
sudo add-apt-repository -y ppa:emoraes25/cid && sudo apt-get update 

#instalar pacotes
sudo apt install -y cid-base cid

#comando para ingressar
#cid joindomain domain= user= pass=
