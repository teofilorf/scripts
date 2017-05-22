#!/bin/bash
conf=~/grdesktop.conf
if [ -e "$conf" ] ;then
  texto=$(cat "$conf")
else
  >"$conf"
fi
servidor=$(yad --title "Acesso Remoto" --text "Servidor" --entry --entry-text="$texto")
echo $servidor > $conf
rdesktop -d jotanunes -g 1360x700 $servidor