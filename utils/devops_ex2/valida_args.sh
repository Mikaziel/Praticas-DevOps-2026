#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   valida_args.sh
# Description:   Valida a quantidade de argumentos passados para o script
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./valida_args.sh <arg1> <arg2> <arg3>
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
if [ $# -ne 3 ]; then
    echo "Erro: Você deve informar 3 argumentos!"
    exit 1
else
    echo "SUCESSO! Você informou os 3 argumentos:"
    echo "Argumento 1: $1"
    echo "Argumento 2: $2"
    echo "Argumento 3: $3"
fi

# END --------------------------------------------------------------------- #