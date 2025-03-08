#!/bin/bash

# Função para mostrar o menu
mostrar_menu() {
    clear
    echo "Escolha uma opção:"
    echo "1) Instalar Setup (Install-Setup-v3.3)"
    echo "2) Atualizar Sistema (Update-System-v1.2)"
    echo "3) Sair"
}

# Função para instalar o setup
install_setup() {
    echo "Instalando Setup..."
    # Aqui vai o comando para rodar o script de instalação
    bash Install-Setup-v3.3.sh
    echo "Instalação Concluída!"
    read -p "Pressione qualquer tecla para continuar..." qualquer_tecla
}

# Função para atualizar o sistema
update_system() {
    echo "Atualizando Sistema..."
    # Aqui vai o comando para rodar o script de atualização
    bash Update-System-v1.2.sh
    echo "Sistema Atualizado!"
    read -p "Pressione qualquer tecla para continuar..." qualquer_tecla
}

# Loop principal
while true; do
    mostrar_menu
    read -p "Escolha uma opção: " opcao
    case $opcao in
        1)
            install_setup
            ;;
        2)
            update_system
            ;;
        3)
            echo "Saindo..."
            break
            ;;
        *)
            echo "Opção inválida. Tente novamente."
            read -p "Pressione qualquer tecla para continuar..." qualquer_tecla
            ;;
    esac
done
