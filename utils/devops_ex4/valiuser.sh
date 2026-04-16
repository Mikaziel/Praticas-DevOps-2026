#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   valiuser.sh
# Description:   Sistema de validação interativa (E-mail, CPF, Data)
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:         $ ./valiuser.sh
# ------------------------------------------------------------------------ #
# History:       v1.0 15/04/2026 - Miguel: Initial version
# ------------------------------------------------------------------------ #

# VARIABLES --------------------------------------------------------------- #

# FUNCTIONS --------------------------------------------------------------- #
valida_email() {
    if echo "$1" | grep -Eq "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"; then
        echo "Válido: O formato do e-mail está correto."
    else
        echo "Inválido: E-mail incorreto."
    fi
}

valida_cpf() {
    if echo "$1" | grep -Eq "^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}$"; then
        echo "Válido: O formato do CPF está correto."
    else
        echo "Inválido: CPF incorreto."
    fi
}

valida_data() {
    if echo "$1" | grep -Eq "^[0-9]{2}/[0-9]{2}/[0-9]{4}$"; then
        echo "Válido: O formato da data está correto."
    else
        echo "Inválido: Data incorreta."
    fi
}

# CODE -------------------------------------------------------------------- #
clear
echo "====================================="
echo "   SISTEMA DE VALIDAÇÃO"
echo "====================================="
echo "1) Validar E-mail"
echo "2) Validar CPF"
echo "3) Validar Data"
echo "0) Sair"
echo "====================================="
read -p "Escolha uma opção: " opcao

case $opcao in
    1)
        read -p "Digite o E-mail: " input_usuario
        valida_email "$input_usuario"
        ;;
    2)
        read -p "Digite o CPF: " input_usuario
        valida_cpf "$input_usuario"
        ;;
    3)
        read -p "Digite a Data: " input_usuario
        valida_data "$input_usuario"
        ;;
    0)
        exit 0
        ;;
    *)
        echo "Opção inválida!"
        ;;
esac

# END --------------------------------------------------------------------- #