#!/bin/bash

while true; do
    clear
    echo "============================="
    echo "   ⚙️  Menu do Termux 🔥  "
    echo "============================="
    echo "1) Atualizar o sistema"
    echo "2) Limpar cache"
    echo "3) Backup do repositório"
    echo "4) Instalar pacotes essenciais"
    echo "5) Sair"
    echo "============================="
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)
            echo "Atualizando o sistema..."
            pkg update && pkg upgrade -y
            echo "Sistema atualizado!"
            ;;
        2)
            echo "Limpando cache..."
            rm -rf ~/.cache/*
            pkg autoclean
            echo "Cache limpo!"
            ;;
        3)
            echo "Fazendo backup do repositório..."
            cd ~/Termux-codes
            git add .
            git commit -m "Backup automático"
            git push origin main
            echo "Backup concluído!"
            ;;
        4)
            echo "Instalando pacotes essenciais..."
            pkg install neofetch git curl wget -y
            echo "Pacotes instalados!"
            ;;
        5)
            echo "Saindo..."
            exit 0
            ;;
        *)
            echo "Opção inválida! Tente novamente."
            ;;
    esac

    read -p "Pressione Enter para continuar..."
done
