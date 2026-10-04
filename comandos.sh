#!/bin/bash

# AWS re/Start - Laboratório 245

# Gerenciar Arquivos de Log

#

# Este arquivo reúne os comandos utilizados durante o laboratório.

# Os comandos abaixo servem como documentação do que foi praticado.

#

# A conexão com a instância foi realizada no Windows utilizando

# PuTTY e a chave labsuser.ppk.

# ==========================================================

# TAREFA 2 - LOCALIZAÇÃO ATUAL

# ==========================================================

# Exibe o diretório atual.

pwd

# Acessa o diretório companyA, caso seja necessário.

cd companyA

# ==========================================================

# CONSULTA DO LOG DE SEGURANÇA

# ==========================================================

# Abre o arquivo de log de exemplo utilizando o less.

#

# O laboratório utiliza /tmp/log/secure como arquivo de teste.

# Normalmente, o arquivo secure está localizado em /var/log/secure.

sudo less /tmp/log/secure

# Dentro do less:

# q -> sair

# ==========================================================

# CONSULTA DOS ÚLTIMOS LOGINS

# ==========================================================

# Exibe informações sobre o último login registrado

# para cada usuário da máquina.

sudo lastlog

# ==========================================================

# OBSERVAÇÕES

# ==========================================================

# O arquivo secure pode apresentar informações como:

# - endereço IP de origem;

# - tentativas de autenticação;

# - falhas de autenticação;

# - porta utilizada.

# O comando lastlog permite verificar:

# - usuários existentes;

# - último login registrado;

# - data e horário do último acesso;

# - usuários que nunca realizaram login.

# IMPORTANTE:

# Este arquivo é uma documentação dos comandos praticados.

# Não é necessário executar todos os comandos de uma só vez.
