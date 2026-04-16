#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   comparar.sh
# Description:   Compara dois números inteiros informados pelo usuário
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./comparar.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
read -p "Diga um valor: " n1
read -p "Diga outro valor: " n2

if [ $n1 -gt $n2 ]; then
    echo "$n1 é maior que $n2"
else
    echo "$n2 é maior que $n1"
fi

# END --------------------------------------------------------------------- #