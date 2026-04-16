#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   valores.sh
# Description:   Lê e exibe dois valores inseridos pelo usuário
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./valores.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
read -p "Digite um valor: " valor1
read -p "Digite outro valor: " valor2
echo "Os valores foram: $valor1 e $valor2"

# END --------------------------------------------------------------------- #