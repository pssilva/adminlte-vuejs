#!/bin/bash
# ==============================================================
# Filename: criar_projeto_adminLTE_vuejs.sh

# Auth: Paulo Sérgio da Silva <pss1suporte@gmail.com>
# Describe: Script para testa a função GitAutomacao.entregarTrabalho
# version: 1.0
# license: MIT License
#
# ==============================================================

#################################
# Parametros
#################################
export NAME_PROJECT="AdminLTEVueJS"
export ARTIFACT_ID="adminlte-vuejs"
export LINK_REPO="https://github.com/pssilva/${ARTIFACT_ID}.git"
export WORK_PATH="${HOME}/projetos/${ARTIFACT_ID}"
#################################

#################################
# Para Criar um projeto use:
#################################
cd "${HOME}/projetos"
npx nuxi@latest init "${ARTIFACT_ID}"
#################################

#################################
# Instalar as dependências necessárias
#################################
cd "${WORK_PATH}"
nvm use --lts
npm install -g @vue/cli
#################################

#################################
# Git Repo Remo
#################################
git remote add origin "${LINK_REPO}"
git branch -M main
git push -u origin main
#################################


code . 
