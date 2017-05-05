#!/bin/bash

servidor=$(yad --title "Acesso Remoto" --text "Servidor" --entry)
rdesktop -d jotanunes -g 1360x700 $servidor