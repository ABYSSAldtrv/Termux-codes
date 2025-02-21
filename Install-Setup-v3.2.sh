#!/bin/bash

# Atualiza os repositórios e pacotes
apt update && apt upgrade -y

# Altera o repositório caso necessário
termux-change-repo

# Instalação dos pacotes corrigidos
pkg install -y clang lua53 python-pip nodejs ruby

# Criar link simbólico para usar 'lua' em vez de 'lua53'
ln -sf /data/data/com.termux/files/usr/bin/lua53 /data/data/com.termux/files/usr/bin/lua

# Exibe mensagem de conclusão
echo "Instalação concluída com sucesso!"
