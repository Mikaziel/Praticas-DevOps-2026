#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   calculadora.sh
# Description:   Realiza operações matemáticas básicas via argumentos
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./calculadora.sh <num1> <operador> <num2>
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #
NUM1=$1
OPERADOR=$2
NUM2=$3

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
if [ $# -ne 3 ]; then
    echo "Erro: Faltou algum argumento!"
    exit 1
fi

resultado=$((NUM1 $OPERADOR NUM2))
echo "Resultado: $NUM1 $OPERADOR $NUM2 = $resultado"

# END --------------------------------------------------------------------- #