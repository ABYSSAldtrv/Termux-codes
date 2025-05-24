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

echo -e "\e[1;32m[*] Entrando em cada distro e instalando pacotes essenciais...\e[0m"

distros=(adelie alpine archlinux artix chimera debian deepin fedora manjaro opensuse pardus rockylinux ubuntu void)

for distro in "${distros[@]}"; do
    echo -e "\e[1;32m[→] Configurando $distro...\e[0m"
    case "$distro" in
        alpine) pkgmgr="apk add" ;;
        archlinux|artix|manjaro) pkgmgr="pacman -Sy --noconfirm" ;;
        debian|deepin|ubuntu|pardus) pkgmgr="apt update && apt install -y" ;;
        fedora|rockylinux) pkgmgr="dnf install -y" ;;
        opensuse) pkgmgr="zypper install -y" ;;
        adelie|chimera|void) pkgmgr="xbps-install -Sy" ;;
        *) pkgmgr="apt install -y" ;;
    esac

    proot-distro login "$distro" --shared-tmp -- bash -c "echo -e '\e[1;32m[*] Instalando pacotes em $distro...\e[0m'; $pkgmgr curl wget git nano neofetch"
done

echo -e "\e[1;32m[✔] Todos os pacotes foram instalados com sucesso nas distros.\e[0m"
