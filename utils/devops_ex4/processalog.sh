#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   processalog.sh
# Description:   Extrai IPs de um arquivo de log usando regex
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./processalog.sh <arquivo.log>
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #
ARQUIVO_LOG="$1"
ARQUIVO_TEMP="/home/miguel/devops_ex4/temp_ips.txt"
RELATORIO_FINAL="/home/miguel/devops_ex4/relatorio_final.txt"

# FUNCTIONS --------------------------------------------------------------- #
extrair_ips() {
    grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" "$1" > "$ARQUIVO_TEMP"
}

# CODE -------------------------------------------------------------------- #
if [ -f "$ARQUIVO_LOG" ]; then
    extrair_ips "$ARQUIVO_LOG"
    
    echo "IPs extraídos:" > "$RELATORIO_FINAL"
    cat "$ARQUIVO_TEMP" >> "$RELATORIO_FINAL"
    rm "$ARQUIVO_TEMP"
    
    echo "Arquivo $RELATORIO_FINAL foi salvo."
    echo "Conteúdo:"
    cat "$RELATORIO_FINAL"
else
    echo "Erro: O arquivo de log informado não existe."
    exit 1
fi

# END --------------------------------------------------------------------- #