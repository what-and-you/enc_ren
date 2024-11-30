#!/bin/bash

# Warna untuk mempercantik tampilan
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
WHITE='\033[1;37m'
RESET='\033[0m'

# Fungsi efek ketikan
typing_effect() {
    local str="$1"
    local delay=0.05
    for (( i=0; i<${#str}; i++ )); do
        echo -n "${str:$i:1}"
        sleep $delay
    done
    echo
}

# Fungsi untuk menampilkan menu dengan desain yang lebih keren
show_menu() {
    clear
    echo -e "${CYAN}╭────────────────────────────────────────────────────────────────╮${RESET}"
    echo -e "${CYAN}│${RESET} ${MAGENTA}≼═════════════════════≽≽ ${YELLOW}Enkripsi Menu ${MAGENTA}≼═════════════════════≽ ${CYAN}│${RESET}"
    echo -e "${CYAN}├────────────────────────────────────────────────────────────────┤${RESET}"
    echo -e "${WHITE}│ ${CYAN}1.${WHITE} Enkripsi script python v1                                   ${CYAN}│${RESET}"
    echo -e "${WHITE}│ ${CYAN}2.${WHITE} Enkripsi script python v2                                   ${CYAN}│${RESET}"
    echo -e "${WHITE}│ ${CYAN}3.${WHITE} Enkripsi script bash/shell ${RED}(MASIH DALAM PERBAIKAN)          ${CYAN}│${RESET}"
    echo -e "${WHITE}│ ${RED}4.${WHITE} Keluar                                                      ${CYAN}│${RESET}"
    echo -e "${CYAN}╰────────────────────────────────────────────────────────────────╯${RESET}"
    echo -n -e "${CYAN}Pilih menu (1/2/3): ${RESET}"
}

# Menu utama
while true; do
    show_menu
    read -r choice
    case $choice in
        1)
            clear
            echo -e "${CYAN}Memulai Enkripsi script python...${RESET}"
            sleep 1
            chmod +x file1.sh
            ./file1.sh
            ;;
        2)
            clear
            echo -e "${CYAN}Memulai Enkripsi script python...${RESET}"
            sleep 1
            chmod +x file2.sh
            ./file2.sh
            ;;
         3)
            clear
            echo -e "${CYAN}Memulai Enkripsi script bash/shell...${RESET}"
            sleep 1
            chmod +x file3.sh
            ./file3.sh
            ;;
            
        4) 
            clear
            echo -e "${RED}Keluar dari script...${RESET}"
            sleep 1.5
            break
            ;;
        *)
            clear
            echo -e "${RED}Pilihan tidak valid, coba lagi.${RESET}"
            read -p "Tekan enter untuk kembali ke menu awal."
            ;;
    esac
done
