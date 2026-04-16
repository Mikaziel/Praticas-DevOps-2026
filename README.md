# Praticas-DevOps-2026

[cite_start]Repositório oficial para a disciplina de Laboratório de programação para operação de infraestrutura de redes de computadores [cite: 1, 7][cite_start], ministrada pelo Professor Eder Pereira dos Santos[cite: 2].

## 🎯 Objetivo
[cite_start]Este repositório tem como objetivo consolidar o desenvolvimento de competências práticas em automação com Bash, monitoramento de sistemas, provisionamento de serviços, manipulação de arquivos, versionamento com Git e organização estruturada de projetos DevOps[cite: 5]. 

[cite_start]Todas as atividades foram desenvolvidas e testadas em ambiente Linux (Ubuntu Server 24.04 LTS)[cite: 35, 38].

---

## 📂 Estrutura do Repositório

[cite_start]A arquitetura de pastas segue rigorosamente o padrão estabelecido no Protocolo Oficial[cite: 6, 26]:

* [cite_start]**`server/`**[cite: 8]: Contém configurações do servidor e o registro do `crontab.txt`.
* [cite_start]**`backup/`**[cite: 9]: Diretório reservado para scripts de cópia de segurança.
* [cite_start]**`utils/`**[cite: 10]: Centraliza os scripts de utilitários e os diretórios das listas de exercícios (`devops_ex1` a `devops_ex4`).
* [cite_start]**`monitoring/`**[cite: 11]: Scripts para monitoramento de recursos do sistema.
* [cite_start]**`ci_cd/`**[cite: 12]: Diretório para futuras configurações de integração contínua.
* **`logs/`**[cite: 13]: Registros de saída das automações e logs de auditoria.
* [cite_start]**`provisioning/`**[cite: 14]: Scripts focados em provisionamento de infraestrutura.

---

## 🧰 Atividades Implementadas (`utils/`)

Os diretórios abaixo contêm as atividades desenvolvidas conforme as solicitações dos laboratórios, agora seguindo o padrão profissional de codificação:

* [cite_start]**`devops_ex1/`**: Scripts de introdução à sintaxe Shell (boas vindas, cálculo de idade, gerador de senhas e variáveis) [cite: 123-144].
* [cite_start]**`devops_ex2/`**: Scripts focados em lógica condicional, operadores matemáticos e validação de argumentos [cite: 113-122].
* **`devops_ex3/`**: Automações para manipulação de arquivos, busca em logs e informações do sistema [cite: 72-110].
* **`devops_ex4/`**: Scripts avançados com uso de funções e expressões regulares para processamento de logs e validação de dados [cite: 56-69].

---

## 🕒 Automação de Tarefas (Crontab)

[cite_start]As seguintes rotinas foram agendadas no cron do usuário para execução autônoma, garantindo o processamento diário e semanal de logs[cite: 31, 32]:

* [cite_start]**Processamento de Log (Diário às 02h):** Filtra e extrai IPs do `/var/log/syslog`[cite: 56, 57].
* **Análise de Erros (Diário à meia-noite):** Busca a palavra "ERROR" no `/var/log/syslog` e salva em arquivo [cite: 61-64].
* [cite_start]**Verificação de E-mails (Segundas-feiras às 03h):** Filtra e-mails válidos em arquivos de texto[cite: 59, 60].

> 📄 *A configuração detalhada está disponível em `server/crontab.txt`.*

---

## 📜 Padrão de Scripts Exigido

[cite_start]Todos os scripts foram refatorados para atender ao padrão profissional obrigatório[cite: 16]:

1. [cite_start]**Shebang:** `#!/usr/bin/env bash`[cite: 17].
2. [cite_start]**Cabeçalho:** Identificação completa, autor, descrição e histórico[cite: 18].
3. [cite_start]**Estrutura:** Separação clara entre `VARIABLES`, `FUNCTIONS`, `CODE` e `END`[cite: 18].
4. [cite_start]**Permissões:** Todos os ficheiros configurados com `chmod +x`[cite: 20].

---

## 🚀 Como Executar

1. Clone o repositório:
   ```bash
   git clone [https://github.com/Mikaziel/Praticas-DevOps-2026.git](https://github.com/Mikaziel/Praticas-DevOps-2026.git)