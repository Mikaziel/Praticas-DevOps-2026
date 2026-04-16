#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   manutencao.sh
# Description:   Busca todos os arquivos .log no diretório /var/log
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./manutencao.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #
DIRETORIO_ALVO="/var/log"
EXTENSAO="*.log"

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
find "$DIRETORIO_ALVO" -type f -name "$EXTENSAO"

# END --------------------------------------------------------------------- #