#!/bin/bash

echo -e "\
[global]\n
   workgroup = WORKGROUP\n
   server string = %h server (Samba, Ubuntu)\n
   dns proxy = no\n
   log file = /var/log/samba/log.%m\n
   max log size = 1000\n
   syslog = 0\n
   panic action = /usr/share/samba/panic-action %d\n
   server role = standalone server\n
   passdb backend = tdbsam\n
   obey pam restrictions = yes\n
   unix password sync = yes\n
   passwd program = /usr/bin/passwd %u\n
   pam password change = yes\n
   map to guest = bad user\n
   usershare allow guests = yes\n"


cat shares.txt |\
while read SHARE
  do
    echo -e "\
    [$SHARE]\n
      path = /renovel/$SHARE\n
      writable = yes\n
      guest ok = yes\n
      guest only = yes\n
      create mode = 0777\n
      directory mode = 0777\n"
  done
