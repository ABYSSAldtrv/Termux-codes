#!/data/data/com.termux/files/usr/bin/bash

# Atualiza o Termux
echo "Atualizando Termux..."
pkg update -y && pkg upgrade -y

# Verifica se o Ubuntu está instalado
if [ ! -d "$HOME/.local/share/ubuntu" ]; then
    echo "Ubuntu não encontrado. Instalando..."
    pkg install proot-distro -y
    proot-distro install ubuntu
fi

# Atualiza pacotes dentro do Ubuntu
echo "Atualizando pacotes dentro do Ubuntu..."
proot-distro login ubuntu -- apt update -y && apt upgrade -y

# Verifica se o Debian está instalado
if [ ! -d "$HOME/.local/share/debian" ]; then
    echo "Debian não encontrado. Instalando..."
    pkg install proot-distro -y
    proot-distro install debian
fi

# Atualiza pacotes dentro do Debian
echo "Atualizando pacotes dentro do Debian..."
proot-distro login debian -- apt update -y && apt upgrade -y

echo "Atualização concluída com sucesso!"