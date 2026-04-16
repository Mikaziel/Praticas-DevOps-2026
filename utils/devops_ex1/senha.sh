#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   senha.sh
# Description:   Gera uma senha simples e oferece a opção de salvá-la
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./senha.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #
ARQUIVO_SENHA="senhas.txt"

# FUNCTIONS --------------------------------------------------------------- #

# CODE -------------------------------------------------------------------- #
read -p "Digite uma palavra-base: " palavra
read -p "Digite um número: " numero
senha="${palavra}_${numero}"
echo "Sua senha gerada é: $senha"

read -p "Deseja salvar a senha em um arquivo? (s/n): " opcao
if [ "$opcao" == "s" ] || [ "$opcao" == "S" ]; then
    echo "$senha" >> "$ARQUIVO_SENHA"
    echo "Feito! Senha salva no arquivo '$ARQUIVO_SENHA'."
else
    echo "Operação finalizada. A senha não foi salva."
fi

# END --------------------------------------------------------------------- #