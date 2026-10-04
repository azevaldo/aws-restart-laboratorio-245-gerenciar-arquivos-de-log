# AWS re/Start — Laboratório 245: Gerenciar Arquivos de Log

## Sobre o laboratório

Neste laboratório do **AWS re/Start**, foram praticados conceitos de gerenciamento e análise de arquivos de log no Linux.

O exercício teve como foco a consulta do arquivo de log de segurança e a utilização do comando `lastlog` para verificar informações sobre os últimos acessos dos usuários da máquina.

## Objetivos

* Consultar um arquivo de log de segurança do Linux.
* Identificar informações relacionadas a falhas de autenticação.
* Utilizar o comando `lastlog`.
* Consultar a última autenticação registrada para os usuários.
* Interpretar informações que podem ser utilizadas em atividades de auditoria e segurança.

## Ambiente

* **Programa:** AWS re/Start
* **Lab:** 245 — Gerenciar Arquivos de Log
* **AWS:** Vocareum
* **Serviço:** Amazon EC2
* **Sistema operacional:** Amazon Linux
* **Acesso:** SSH
* **Sistema utilizado:** Windows
* **Cliente SSH:** PuTTY
* **Chave:** `labsuser.ppk`
* **Usuário:** `ec2-user`

## Conexão com a instância

Como o laboratório foi realizado no Windows, a conexão com a instância EC2 foi feita utilizando o **PuTTY**.

Configuração utilizada:

```text
Host Name: <PublicIP>
Port: 22
Connection type: SSH
```

Na configuração da autenticação do PuTTY:

```text
Connection
└── SSH
    └── Auth
        └── Credentials
            └── Private key file: labsuser.ppk
```

Depois da conexão, foi utilizado o usuário:

```text
ec2-user
```

> A chave privada não deve ser adicionada ao repositório.

## Tarefa 1 — Conectar à instância EC2

Após iniciar o laboratório, foram obtidas as informações de acesso através do painel **Details**.

Para usuários Windows:

1. Baixar o arquivo `labsuser.ppk`.
2. Copiar o endereço **PublicIP** da instância.
3. Abrir o PuTTY.
4. Configurar o endereço IP e a porta SSH.
5. Informar a chave `labsuser.ppk` em `Connection > SSH > Auth > Credentials`.
6. Iniciar a conexão.
7. Entrar utilizando o usuário `ec2-user`.

## Tarefa 2 — Consultar arquivos de log de segurança

Primeiro, foi validado o diretório atual:

```bash
pwd
```

Caso necessário, acessar o diretório `companyA`:

```bash
cd companyA
```

### Consultando o log `secure`

O laboratório disponibiliza um arquivo de exemplo em:

```text
/tmp/log/secure
```

Para visualizar seu conteúdo:

```bash
sudo less /tmp/log/secure
```

O arquivo apresenta informações relacionadas a eventos de autenticação, incluindo dados como:

* endereço IP de origem;
* tentativas de autenticação;
* falhas de autenticação;
* porta utilizada.

Para sair do `less`:

```text
q
```

### Localização usual do arquivo

O laboratório informa que, normalmente, o arquivo de segurança está localizado em:

```text
/var/log/secure
```

Neste exercício, entretanto, foi utilizado o arquivo de exemplo:

```text
/tmp/log/secure
```

## Consultando os últimos logins

Para visualizar o último acesso registrado de cada usuário da máquina:

```bash
sudo lastlog
```

O comando apresenta informações sobre os últimos logins dos usuários, incluindo usuários que nunca realizaram login.

Isso pode ser útil para atividades de:

* auditoria;
* monitoramento de acessos;
* análise de usuários;
* investigação de eventos de autenticação.

## Informações que podem ser extraídas

A análise dos logs permite identificar informações relevantes para atividades de segurança e administração, como:

* usuários que realizaram login;
* usuários que nunca realizaram login;
* datas e horários dos últimos acessos;
* possíveis falhas de autenticação;
* endereços IP relacionados às tentativas de acesso;
* portas utilizadas nas tentativas de conexão.

Essas informações podem auxiliar na identificação de comportamentos incomuns e na auditoria dos acessos ao sistema.

## Principais comandos utilizados

| Comando                     | Função                                          |
| --------------------------- | ----------------------------------------------- |
| `pwd`                       | Exibe o diretório atual                         |
| `cd companyA`               | Acessa o diretório `companyA`                   |
| `sudo less /tmp/log/secure` | Visualiza o arquivo de log de segurança         |
| `q`                         | Sai do `less`                                   |
| `sudo lastlog`              | Exibe o último login registrado de cada usuário |

## O que foi aprendido

Neste laboratório, foram praticados:

* leitura de arquivos de log no Linux;
* utilização do `less` para visualizar arquivos;
* análise de informações de autenticação;
* utilização do `lastlog`;
* identificação de usuários e seus últimos acessos;
* interpretação de informações úteis para auditoria e segurança.

## Conclusão

O laboratório demonstrou como os arquivos de log podem ser utilizados para acompanhar eventos de autenticação e acessos em um sistema Linux.

A utilização conjunta de ferramentas como `less` e `lastlog` permite obter informações importantes para monitoramento, auditoria e análise de segurança.

## Arquivos do repositório

```text
aws-restart-laboratorio-245-gerenciar-arquivos-de-log/
├── README.md
├── comandos.sh
└── .gitignore
```

O arquivo `comandos.sh` reúne os principais comandos praticados durante o laboratório.
