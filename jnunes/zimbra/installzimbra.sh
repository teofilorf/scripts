#!/bin/bash

sudo add-apt-repository -y ppa:webupd8team/java && sudo apt update && sudo apt install -y oracle-java8-set-default && \
mkdir ~/Desktop && \
wget -c https://s3.amazonaws.com/files.zimbra.com/downloads/zdesktop/7.3.0/b13060/zdesktop_7_3_0_ga_b13060_20170410030557_linux_x64.tgz && \
tar -zxvf zdesktop_7_3_0_ga_b13060_20170410030557_linux_x64.tgz && \
cat config.txt | zdesktop_7_3_0_ga_b13060_linux_x64/install.pl && \
cp ~/Desktop/zd.desktop ~/Área\ de\ Trabalho/

