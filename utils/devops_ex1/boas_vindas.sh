#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   boas_vindas.sh
# Description:   Coleta dados do usuário e exibe mensagem de boas-vindas
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./boas_vindas.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
read -p "Diga o seu nome: " nome
read -p "Diga a disciplina que está cursando: " disciplina
read -p "Qual o semestre você está? " semestre
echo "Olá, $nome! Bem-vindo à disciplina $disciplina no $semestreº semestre. A data é: $(date). Seu diretório é $(pwd)."

# END --------------------------------------------------------------------- #