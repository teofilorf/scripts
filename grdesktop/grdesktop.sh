#!/bin/bash

servidor=$(yad --title "Acesso Remoto" --text "Servidor" --entry)
rdesktop -g 1360x700 $servidor