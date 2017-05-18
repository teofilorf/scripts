#!/bin/bash

mkdir ~/Desktop
wget -c https://files.zimbra.com/downloads/zdesktop/7.2.8/b12102/zdesktop_7_2_8_ga_b12102_20161005054617_linux_i686.tgz
tar -zxvf zdesktop_7_2_8_ga_b12102_20161005054617_linux_i686.tgz
cat config.txt | zdesktop_7_2_8_ga_b12102_linux_i686/install.pl
cp ~/Desktop/zd.desktop ~/Área\ de\ Trabalho/
