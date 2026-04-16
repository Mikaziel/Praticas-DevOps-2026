#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   ordem.sh
# Description:   Coloca duas strings em ordem alfabética
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./ordem.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
read -p "Diga uma string: " s1
read -p "Diga outra string: " s2

if [ "$s1" \< "$s2" ]; then
    echo "A ordem alfabética é: $s1 - $s2"
else
    echo "A ordem alfabética é: $s2 - $s1"
fi

# END --------------------------------------------------------------------- #