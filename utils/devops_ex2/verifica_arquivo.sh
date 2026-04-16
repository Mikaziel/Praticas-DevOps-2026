#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   verifica_arquivo.sh
# Description:   Verifica se um item existe e se é arquivo ou diretório
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./verifica_arquivo.sh <nome_do_arquivo>
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #
ARQUIVO=$1

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
if [ -z "$ARQUIVO" ]; then
    echo "Erro: Informe o nome de um arquivo ou diretório."
    exit 1
fi

if [ -f "$ARQUIVO" ]; then
    echo "O item '$ARQUIVO' existe e é um arquivo regular."
elif [ -d "$ARQUIVO" ]; then
    echo "O item '$ARQUIVO' existe e é um diretório."
else
    echo "O item '$ARQUIVO' não existe ou não é um arquivo/diretório comum."
fi

# END --------------------------------------------------------------------- #