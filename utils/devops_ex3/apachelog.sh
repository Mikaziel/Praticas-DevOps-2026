#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   apachelog.sh
# Description:   Filtra as 5 primeiras ocorrências de um código no apache.log
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./apachelog.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #
ARQUIVO_LOG="apache.log"
PADRAO_BUSCA="4786228.66"
LIMITE=5

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
grep "$PADRAO_BUSCA" "$ARQUIVO_LOG" | head -$LIMITE

# END --------------------------------------------------------------------- #