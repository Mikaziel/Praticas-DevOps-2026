#!/usr/bin/env bash
# ------------------------------------------------------------------------ #
# Script Name:   essential_commands.sh
# Description:   Demonstrates essential DevOps commands
# Site:          https://github.com/Mikaziel
# Written by:    Miguel Dias
# Maintenance:   Miguel Dias
# ------------------------------------------------------------------------ #
# Usage:
#       $ ./essential_commands.sh
# ------------------------------------------------------------------------ #
# Repository:
#       Path: utils/essential_commands.sh
# ------------------------------------------------------------------------ #
# History:
#        v1.0 15/04/2026 - Miguel:
#           - Initial version
# ------------------------------------------------------------------------ #

# Variables --------------------------------------------------------------- #
readonly GREEN='\033[0;32m'
readonly BLUE='\033[0;34m'
readonly YELLOW='\033[1;33m'
readonly RED='\033[0;31m'
readonly NC='\033[0m'

# Functions --------------------------------------------------------------- #

print_section() {
    echo -e "${BLUE}============================================================${NC}"
    echo -e "${YELLOW} $1 ${NC}"
    echo -e "${BLUE}============================================================${NC}"
}

print_command() {
    local cmd="$1"
    local needs_args="$2"

    if [ -z "$cmd" ]; then
        return
    fi

    echo ""
    echo -e "${GREEN}[ MODO DE TESTE ]${NC}"

    while true; do
        read -p "Deseja testar o comando '$cmd' agora? (s/n): " choice

        case "$choice" in
            s|S)
                read -p "Digite os argumentos para '$cmd': " args

                if [ "$needs_args" = "sim" ] && [ -z "$args" ]; then
                    echo -e "${RED}Esse comando precisa de argumentos para ser testado corretamente.${NC}"
                    echo "Exemplo: confira a seção acima e execute novamente com argumentos."
                    break
                fi

                echo ""
                echo -e "${YELLOW}>>> Executando: $cmd $args${NC}"
                eval "$cmd $args"
                echo -e "${YELLOW}<<< Fim da execução${NC}"
                echo ""
                break
                ;;
            n|N)
                echo "Teste pulado."
                echo ""
                break
                ;;
            *)
                echo -e "${RED}Opção inválida. Digite 's' para sim ou 'n' para não.${NC}"
                ;;
        esac
    done

    echo -e "${GREEN}Pressione [ENTER] para ir para o próximo comando...${NC}"
    read -r
    clear
}

# Main Code --------------------------------------------------------------- #

clear

print_section "ESSENTIAL DEVOPS COMMANDS DEMO"
echo "Bem-vindo ao tutorial interativo de comandos essenciais para DevOps."
echo ""
echo "Este script apresenta comandos usados em ambientes Linux para automação,"
echo "monitoramento, gerenciamento de arquivos, processos e espaço em disco."
echo ""
echo "Pressione [ENTER] para começar."
read -r
clear

# 1. Comando pwd
print_section "1. pwd - Print Working Directory"
echo "Descrição: Mostra o diretório atual em que o usuário está trabalhando."
echo "Help: pwd --help"
echo "Exemplo de uso:"
echo "pwd"
print_command "pwd" "nao"

# 2. Comando date
print_section "2. date - Display Date and Time"
echo "Descrição: Exibe ou formata a data e a hora atual do sistema."
echo "Help: date --help"
echo "Exemplo de uso:"
echo "date"
echo "date '+%Y-%m-%d %H:%M:%S'"
print_command "date" "nao"

# 3. Comando touch
print_section "3. touch - Create Files"
echo "Descrição: Cria arquivos vazios ou atualiza a data de modificação de arquivos existentes."
echo "Help: touch --help"
echo "Exemplo de uso:"
echo "touch arquivo.txt"
print_command "touch" "sim"

# 4. Comando cat
print_section "4. cat - Display File Content"
echo "Descrição: Exibe o conteúdo de arquivos no terminal. Também pode concatenar arquivos."
echo "Help: cat --help"
echo "Exemplo de uso:"
echo "cat arquivo.txt"
echo "cat arquivo1.txt arquivo2.txt"
print_command "cat" "sim"

# 5. Comando grep
print_section "5. grep - Search Text Patterns"
echo "Descrição: Procura palavras, textos ou padrões dentro de arquivos."
echo "Help: grep --help"
echo "Exemplo de uso:"
echo "grep 'root' /etc/passwd"
echo "grep -i 'error' arquivo.log"
print_command "grep" "sim"

# 6. Comando curl
print_section "6. curl - Transfer Data From URLs"
echo "Descrição: Realiza requisições para URLs, APIs e servidores web."
echo "Help: curl --help"
echo "Exemplo de uso:"
echo "curl https://example.com"
echo "curl -I https://example.com"
print_command "curl" "sim"

# 7. Comando gzip
print_section "7. gzip - Compress Files"
echo "Descrição: Compacta arquivos, gerando uma versão com extensão .gz."
echo "Help: gzip --help"
echo "Exemplo de uso:"
echo "gzip arquivo.txt"
echo "gzip -k arquivo.txt"
echo "Observação: sem a opção -k, o arquivo original pode ser substituído pelo .gz."
print_command "gzip" "sim"

# 8. Comando chmod
print_section "8. chmod - Change File Permissions"
echo "Descrição: Altera permissões de leitura, escrita e execução de arquivos e diretórios."
echo "Help: chmod --help"
echo "Exemplo de uso:"
echo "chmod +x script.sh"
echo "chmod 755 script.sh"
print_command "chmod" "sim"

# 9. Comando pgrep
print_section "9. pgrep - Search Running Processes"
echo "Descrição: Procura processos em execução pelo nome e retorna seus PIDs."
echo "Help: pgrep --help"
echo "Exemplo de uso:"
echo "pgrep bash"
echo "pgrep -l ssh"
print_command "pgrep" "sim"

# 10. Comando ps
print_section "10. ps - Process Status"
echo "Descrição: Exibe informações sobre processos em execução no sistema."
echo "Help: ps --help"
echo "Exemplo de uso:"
echo "ps"
echo "ps aux"
echo "ps -ef"
print_command "ps" "nao"

# 11. Comando df
print_section "11. df - Disk Free"
echo "Descrição: Mostra o espaço usado e disponível nos sistemas de arquivos."
echo "Help: df --help"
echo "Exemplo de uso:"
echo "df"
echo "df -h"
print_command "df" "nao"

# 12. Comando du
print_section "12. du - Disk Usage"
echo "Descrição: Mostra o espaço ocupado por arquivos e diretórios."
echo "Help: du --help"
echo "Exemplo de uso:"
echo "du -sh /home"
echo "du -h arquivo.txt"
print_command "du" "nao"

# Cleanup --------------------------------------------------------------- #

print_section "TUTORIAL CONCLUÍDO"
echo "Todos os comandos essenciais foram apresentados."
echo "Fim da demonstração interativa."
echo ""

# ------------------------------------------------------------------------ #
# END #