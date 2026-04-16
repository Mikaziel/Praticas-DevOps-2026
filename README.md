# Praticas-DevOps-2026

[cite_start]Repositório oficial para a disciplina de Laboratório de programação para operação de infraestrutura de redes de computadores [cite: 1, 7][cite_start], ministrada pelo Professor Eder Pereira dos Santos[cite: 2].

## 🎯 Objetivo
[cite_start]Este repositório tem como objetivo consolidar o desenvolvimento de competências práticas em automação com Bash, monitoramento de sistemas, provisionamento de serviços, manipulação de arquivos, versionamento com Git e organização estruturada de projetos DevOps[cite: 5]. 

[cite_start]Todas as atividades foram desenvolvidas e testadas em ambiente Linux (Ubuntu Server 24.04 LTS)[cite: 35, 38].

---

## 📂 Estrutura do Repositório

[cite_start]A arquitetura de pastas segue rigorosamente o padrão estabelecido no Protocolo Oficial[cite: 6, 26]:

* [cite_start]**`server/`**[cite: 8]: Configurações do servidor (inclui o registro do `crontab.txt`).
* [cite_start]**`backup/`**[cite: 9]: Diretório reservado para rotinas de cópia de segurança.
* [cite_start]**`utils/`**[cite: 10]: Scripts utilitários e de uso geral. [cite_start]*Contém a Atividade 1.1 (`essential_commands.sh`) [cite: 51] e as listas de exercícios (Lotes 1 a 4).*
* [cite_start]**`monitoring/`**[cite: 11]: Automações para checagem de saúde e recursos do sistema operacional.
* [cite_start]**`ci_cd/`**[cite: 12]: Configurações futuras para pipelines de integração e entrega contínua.
* **`logs/`**[cite: 13]: Arquivos de auditoria e registros de saída das automações e do Apache.
* [cite_start]**`provisioning/`**[cite: 14]: Scripts focados em provisionamento de infraestrutura.

## 🧰 Catálogo de Automações (Atividades)

Todos os scripts desenvolvidos para as listas de exercícios encontram-se centralizados no diretório `utils/` e padronizados para execução. Abaixo está o mapeamento de cada entrega:

### Atividade 1.1: Comandos Essenciais
| Script | Descrição |
| :--- | :--- |
| `essential_commands.sh` | Demonstração prática e interativa de 12 comandos essenciais de Linux (pwd, date, touch, cat, grep, curl, gzip, chmod, pgrep, ps, df, du). |

### Lista: Sintaxe Shell (Lote 1)
| Script | Descrição |
| :--- | :--- |
| `boas_vindas.sh` | Coleta dados interativos e exibe saudação formatada com variáveis de ambiente. |
| `idade.sh` | Calcula a idade do usuário com base no ano de nascimento e o ano atual do sistema. |
| `senha.sh` | Gera uma senha combinando strings e números, com opção de salvar em `senhas.txt`. |
| `valores.sh` | Lê e exibe variáveis simples de entrada. |
| `diretorio.sh` | Exibe o usuário logado, o diretório home e o caminho absoluto da execução. |

### Atividade 3: Lógica e Operadores (Lote 2)
| Script | Descrição |
| :--- | :--- |
| `comparar.sh` | Compara dois números informando o maior/menor. |
| `par_impar.sh` | Utiliza o operador `%` para classificar números inteiros. |
| `valida_args.sh` | Trava a execução caso o usuário não forneça exatamente 3 argumentos (`$#`). |
| `compara_strings.sh` | Avalia se duas entradas de texto são idênticas. |
| `ordem.sh` | Classifica duas strings em ordem alfabética. |
| `calculadora.sh` | Realiza operações matemáticas básicas via argumentos posicionais. |
| `verifica_arquivo.sh` | Valida se um item é um arquivo regular (`-f`), diretório (`-d`) ou inexistente. |

### Atividade 4: Manipulação de Arquivos e Sistema (Lote 3)
| Script | Descrição |
| :--- | :--- |
| `apachelog.sh` | Filtra o `apache.log` buscando o código de transação `4786228.66` (5 ocorrências). |
| `manutencao.sh` | Busca recursiva por arquivos `.log` no diretório `/var/log` usando o `find`. |
| `relatorios.sh` | Exibe o uso de disco (`df -h`) e o tamanho do diretório home (`du -sh`). |
| `user.sh` | Extrai informações de segurança do usuário (`whoami` e `id`). |
| `dirtest.sh` | Testa automação de criação, navegação e remoção de diretórios. |

### Atividade 5: Regex e Expressões Regulares (Lote 4)
| Script | Descrição |
| :--- | :--- |
| `processalog.sh` | Extrai apenas endereços IPv4 válidos do `/var/log/syslog` usando Regex. |
| `verif_email.sh` | Filtra e-mails válidos em um arquivo de texto usando o padrão `texto@texto.texto`. |
| `analisalog.sh` | Varre arquivos de log em busca de eventos "ERROR" (Case-insensitive). |
| `valiuser.sh` | Menu interativo para validação rigorosa de CPF, E-mail e Data com Regex. |
---

## 📜 Padrão Profissional de Scripts

[cite_start]Para garantir a confiabilidade e padronização, todos os executáveis deste repositório respeitam as seguintes regras[cite: 16]:

1. [cite_start]**Shebang:** Utilização obrigatória de `#!/usr/bin/env bash`[cite: 17].
2. [cite_start]**Cabeçalho Técnico:** Identificação completa contendo Nome, Descrição, Autor (Miguel), Uso e Histórico de Versões[cite: 18].
3. [cite_start]**Estruturação:** Código dividido formalmente nas seções `VARIABLES`, `FUNCTIONS`, `CODE` e `END`[cite: 18].
4. [cite_start]**Boas Práticas:** Tratamento de erros, uso de logs com timestamp e permissões de execução corretas (`chmod +x`)[cite: 19, 20].

---

## 🕒 Automação de Tarefas (Crontab)

[cite_start]As seguintes rotinas de manutenção e monitoramento foram agendadas no cron do servidor para execução autônoma[cite: 31, 32]:

* **03:00 (Toda segunda-feira):** Executa a verificação de e-mails (`utils/verif_email.sh`) e redireciona as saídas (incluindo erros) para o diretório de logs (`logs/log_execucao.txt`).
* **02:00 (Diariamente):** Executa o processamento do sistema (`utils/processalog.sh`), extraindo registros de IP diretamente do `/var/log/syslog`.
* **00:00 (Diariamente):** Aciona o analisador de logs (`utils/analisalog.sh`) para varrer o `/var/log/syslog` em busca de eventos de erro.

> 📄 *A sintaxe exata e mapeamento de caminhos absolutos podem ser consultados no arquivo `server/crontab.txt`.*

---

## 🚀 Como Executar

1. Clone este repositório no seu ambiente Linux:
   ```bash
   git clone [https://github.com/SEU_USUARIO/Praticas-DevOps-2026.git](https://github.com/Mikaziel/Praticas-DevOps-2026.git)