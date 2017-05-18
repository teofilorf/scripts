#!/bin/bash

wget -c https://s3.amazonaws.com/files.zimbra.com/downloads/zdesktop/7.3.0/b13060/zdesktop_7_3_0_ga_b13060_20170410030557_linux_x64.tgz 
tar -zxvf zdesktop_7_3_0_ga_b13060_20170410030557_linux_x64.tgz
cd zdesktop_7_3_0_ga_b13060_linux_x64
cat config.txt | ./install.pl

