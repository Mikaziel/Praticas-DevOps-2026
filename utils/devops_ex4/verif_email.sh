#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   verif_email.sh
# Description:   Filtra e-mails válidos dentro de um arquivo de texto
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./verif_email.sh <arquivo.txt>
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #
ARQUIVO_TXT="$1"

# FUNCTIONS --------------------------------------------------------------- #
extrair_emails() {
    grep -E "[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" "$1"
}

# CODE -------------------------------------------------------------------- #
if [ -z "$ARQUIVO_TXT" ]; then
    echo "Erro: Você precisa informar um arquivo .txt"
    exit 1
fi

if [ -f "$ARQUIVO_TXT" ]; then
    echo "E-mails filtrados:"
    extrair_emails "$ARQUIVO_TXT"
else
    echo "Erro: Arquivo '$ARQUIVO_TXT' não encontrado."
fi

# END --------------------------------------------------------------------- #