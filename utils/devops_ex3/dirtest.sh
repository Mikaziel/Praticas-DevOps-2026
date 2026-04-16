#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   dirtest.sh
# Description:   Testa criação e remoção de diretórios
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./dirtest.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #
NOME_DIR="teste"

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
mkdir "$NOME_DIR"
echo "Diretório criado."
sleep 2

cd "$NOME_DIR" || exit
echo "Entrando no diretório..."
sleep 2

cd ..
echo "Saindo do diretório..."
sleep 2

rmdir "$NOME_DIR"
echo "Diretório vazio. Apagando..."
sleep 2

# END --------------------------------------------------------------------- #