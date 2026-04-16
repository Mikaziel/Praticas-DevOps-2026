# Praticas-DevOps-2026

Repositório oficial para a disciplina de Laboratório de programação para operação de infraestrutura de redes de computadores, ministrada pelo Professor Eder Pereira dos Santos.

## 🎯 Objetivo

Este repositório tem como objetivo consolidar o desenvolvimento de competências práticas em automação com Bash, monitoramento de sistemas, provisionamento de serviços, manipulação de arquivos, versionamento com Git e organização estruturada de projetos DevOps.

Todas as atividades foram desenvolvidas e testadas em ambiente Linux (Ubuntu Server 24.04 LTS).

---

## 📂 Estrutura do Repositório

A arquitetura de pastas segue rigorosamente o padrão estabelecido no Protocolo Oficial:

* **`server/`**: Contém configurações do servidor e o registro do `crontab.txt`.
* **`backup/`**: Diretório reservado para scripts de cópia de segurança.
* **`utils/`**: Centraliza os scripts de utilitários e os diretórios das listas de exercícios (`devops_ex1` a `devops_ex4`).
* **`monitoring/`**: Scripts para monitoramento de recursos do sistema.
* **`ci_cd/`**: Diretório para futuras configurações de integração contínua.
* **`logs/`**: Registros de saída das automações e logs de auditoria.
* **`provisioning/`**: Scripts focados em provisionamento de infraestrutura.

---

## 🧰 Atividades Implementadas (`utils/`)

Os diretórios abaixo contêm as atividades desenvolvidas conforme as solicitações dos laboratórios, agora seguindo o padrão profissional de codificação:

* **`devops_ex1/`**: Scripts de introdução à sintaxe Shell (boas vindas, cálculo de idade, gerador de senhas e variáveis).
* **`devops_ex2/`**: Scripts focados em lógica condicional, operadores matemáticos e validação de argumentos.
* **`devops_ex3/`**: Automações para manipulação de arquivos, busca em logs e informações do sistema.
* **`devops_ex4/`**: Scripts avançados com uso de funções e expressões regulares para processamento de logs e validação de dados.

---

## 🕒 Automação de Tarefas (Crontab)

As seguintes rotinas foram agendadas no cron do usuário para execução autônoma, garantindo o processamento diário e semanal de logs:

* **Processamento de Log (Diário às 02h):** Filtra e extrai IPs do `/var/log/syslog`.
* **Análise de Erros (Diário à meia-noite):** Busca a palavra "ERROR" no `/var/log/syslog` e salva em arquivo.
* **Verificação de E-mails (Segundas-feiras às 03h):** Filtra e-mails válidos em arquivos de texto.

> 📄 *A configuração detalhada está disponível em `server/crontab.txt`.*

---

## 📜 Padrão de Scripts Exigido

Todos os scripts foram refatorados para atender ao padrão profissional obrigatório:

1. **Shebang:** `#!/usr/bin/env bash`.
2. **Cabeçalho:** Identificação completa, autor, descrição e histórico.
3. **Estrutura:** Separação clara entre `VARIABLES`, `FUNCTIONS`, `CODE` e `END`.
4. **Permissões:** Todos os ficheiros configurados com `chmod +x`.

---

## 🚀 Como Executar

1. Clone o repositório:
   ```bash
   git clone [https://github.com/Mikaziel/Praticas-DevOps-2026.git](https://github.com/Mikaziel/Praticas-DevOps-2026.git)