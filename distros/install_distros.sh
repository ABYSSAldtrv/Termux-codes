#!/bin/bash
clear

echo -e "\e[1;31m"
echo "██████╗ ███████╗██████╗  ██████╗ ████████╗ ██████╗ ██████╗ ███████╗"
echo "██╔══██╗██╔════╝██╔══██╗██╔═══██╗╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝"
echo "██████╔╝█████╗  ██████╔╝██║   ██║   ██║   ██║   ██║██████╔╝█████╗  "
echo "██╔═══╝ ██╔══╝  ██╔═══╝ ██║   ██║   ██║   ██║   ██║██╔═══╝ ██╔══╝  "
echo "██║     ███████╗██║     ╚██████╔╝   ██║   ╚██████╔╝██║     ███████╗"
echo "╚═╝     ╚══════╝╚═╝      ╚═════╝    ╚═╝    ╚═════╝ ╚═╝     ╚══════╝"
echo -e "\e[0m"

echo -e "\e[1;32m[*] Instalando todas as distribuições disponíveis...\e[0m"

distros=(adelie alpine archlinux artix chimera debian deepin fedora manjaro opensuse pardus rockylinux ubuntu void)

for distro in "${distros[@]}"; do
    echo -e "\e[1;32m[+] Instalando $distro...\e[0m"
    proot-distro install "$distro"
done

echo -e "\e[1;32m[✔] Instalação finalizada. Execute ./check_distros.sh para verificar sucesso.\e[0m"
