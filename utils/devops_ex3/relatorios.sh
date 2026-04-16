#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   relatorios.sh
# Description:   Mostra o espaço livre em disco e tamanho do /home
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./relatorios.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #
DIR_ALVO="/home"

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
echo "Espaço livre nos discos:"
df -h

echo -e "\nTamanho do diretório $DIR_ALVO:"
sudo du -sh "$DIR_ALVO"

# END --------------------------------------------------------------------- #