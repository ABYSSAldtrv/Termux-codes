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

echo -e "\e[1;32m[*] Verificando distribuições instaladas...\e[0m"

distros=(adelie alpine archlinux artix chimera debian deepin fedora manjaro opensuse pardus rockylinux ubuntu void)

for distro in "${distros[@]}"; do
    if [ -d "$PREFIX/var/lib/proot-distro/installed-rootfs/$distro" ]; then
        echo -e "\e[1;32m[✔] $distro instalada com sucesso.\e[0m"
    else
        echo -e "\e[1;31m[✘] $distro NÃO está instalada.\e[0m"
    fi
done
