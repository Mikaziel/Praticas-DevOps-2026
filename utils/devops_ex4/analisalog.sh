#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   analisalog.sh
# Description:   Extrai linhas com a palavra 'error' e salva em novo arquivo
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./analisalog.sh <arquivo.log>
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #
ARQUIVO_LOG="$1"
ARQUIVO_DESTINO="/home/miguel/devops_ex4/erros_.txt"

# FUNCTIONS --------------------------------------------------------------- #
analisa_log() {
    grep -i "error" "$1" >> "$ARQUIVO_DESTINO"
}

# CODE -------------------------------------------------------------------- #
if [ -f "$ARQUIVO_LOG" ]; then
    analisa_log "$ARQUIVO_LOG"
    echo "Arquivo $ARQUIVO_DESTINO foi salvo com sucesso."
else
    echo "Erro: Arquivo '$ARQUIVO_LOG' não encontrado."
    exit 1
fi

# END --------------------------------------------------------------------- #