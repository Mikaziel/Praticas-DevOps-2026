#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   idade.sh
# Description:   Calcula a idade baseada no ano de nascimento
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./idade.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #
ANO_ATUAL=$(date +%Y)

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
read -p "Qual o seu nome? " nome
read -p "Em que ano você nasceu? " anon
idade=$((ANO_ATUAL - anon))
echo "Seu nome é $nome e você tem $idade anos"

# END --------------------------------------------------------------------- #