#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   compara_strings.sh
# Description:   Verifica se duas strings são idênticas
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./compara_strings.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
read -p "Diga uma string: " s1
read -p "Diga outra string: " s2

if [ "$s1" == "$s2" ]; then
    echo "As strings são iguais!"
else
    echo "As strings são diferentes!"
fi

# END --------------------------------------------------------------------- #