#!/bin/bash

servidor=$(yad --title "Acesso Remoto" --text "Servidor" --entry)
echo $servidor
rdesktop -g 1360x700 $servidor