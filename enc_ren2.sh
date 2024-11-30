#!/bin/bash

# Warna untuk mempercantik tampilan
RED="\033[31m"
GREEN="\033[32m"
BLUE="\033[34m"
MAGENTA="\033[35m"
CYAN="\033[36m"
YELLOW="\033[33m"
WHITE="\033[97m"
BOLD="\033[1m"
RESET="\033[0m"

# Kunci XOR
XOR_KEY=7

# Fungsi untuk memeriksa apakah file ada dan bisa dibaca
check_file() {
    if [ ! -f "$1" ]; then
        echo -e "${RED}File $1 tidak ditemukan!${RESET}"
        return 1
    fi
    return 0
}

# Fungsi untuk mengenkripsi file
encrypt_file() {
    INPUT_FILE=$1
    OUTPUT_FILE=$2

    # Baca isi file
    CONTENT=$(<"$INPUT_FILE")
    EXTENSION="${INPUT_FILE##*.}"

    # Proses Enkripsi
    echo -e "${BLUE}Meng-encrypt $INPUT_FILE, tunggu sebentar...${RESET}"
    ENCRYPTED_CONTENT=$(echo -n "$CONTENT" | xxd -p -c 256 | while read -r line; do
        for byte in $(echo "$line" | sed "s/../& /g"); do
            printf "%02x" $((0x$byte ^ XOR_KEY))
        done
    done)

    # Tulis hasil enkripsi ke file output
    echo -e "# -*- coding: utf-8 -*-" > "$OUTPUT_FILE"
    echo -e "# Script encrypted Python by REN9999" >> "$OUTPUT_FILE"
    echo -e "import binascii" >> "$OUTPUT_FILE"
    echo -e "def decrypt_content():" >> "$OUTPUT_FILE"
    echo -e "    encrypted_content = \"$(echo $ENCRYPTED_CONTENT)\"" >> "$OUTPUT_FILE"
    echo -e "    decrypted_content = bytearray()" >> "$OUTPUT_FILE"
    echo -e "    for i in range(0, len(encrypted_content), 2):" >> "$OUTPUT_FILE"
    echo -e "        byte = int(encrypted_content[i:i+2], 16) ^ $XOR_KEY" >> "$OUTPUT_FILE"
    echo -e "        decrypted_content.append(byte)" >> "$OUTPUT_FILE"
    echo -e "    exec(decrypted_content.decode('utf-8'), {'__name__': '__main__'})" >> "$OUTPUT_FILE"
    echo -e "decrypt_content()" >> "$OUTPUT_FILE"

    echo -e "${GREEN}File Python berhasil dienkripsi: $OUTPUT_FILE${RESET}"
}

# Fungsi untuk mendekripsi file
decrypt_file() {
    INPUT_FILE=$1
    OUTPUT_FILE=$2

    # Cari konten terenkripsi
    ENCRYPTED_CONTENT=$(grep -oP "(?<=encrypted_content = \\\").*(?=\\\")" "$INPUT_FILE")
    
    if [ -z "$ENCRYPTED_CONTENT" ]; then
        echo -e "${RED}File tidak valid atau tidak terenkripsi.${RESET}"
    else
        DECRYPTED_CONTENT=$(echo "$ENCRYPTED_CONTENT" | sed "s/../& /g" | while read -r byte; do
            printf "\\x$(printf "%02x" $((0x$byte ^ XOR_KEY)))"
        done)
        echo "$DECRYPTED_CONTENT" > "$OUTPUT_FILE"
        echo -e "${GREEN}File berhasil didekripsi: $OUTPUT_FILE${RESET}"
    fi
}

# Tampilan menu
while true; do
    clear
    echo -e "${CYAN}╭──────────────────────────────────────────╮"
    echo -e "│  ${BOLD}${WHITE}Enkripsi & Dekripsi Tool${RESET}  │"
    echo -e "╰──────────────────────────────────────────╯${RESET}"
    echo -e "${CYAN}============================================${RESET}"
    echo -e "${GREEN}1.${RESET} ${YELLOW}Enkripsi File${RESET}"
    echo -e "${GREEN}2.${RESET} ${YELLOW}Dekripsi File${RESET}"
    echo -e "${RED}3.${RESET} ${YELLOW}Keluar"
    echo -e "${CYAN}============================================${RESET}"
    echo -e "${BOLD}Pilih opsi (1-3): ${RESET}"
    read -p "" OPTION

    case $OPTION in
        1) # Enkripsi File
            echo -e "\n${MAGENTA}=== Enkripsi File ===${RESET}"
            read -p "Masukkan lokasi file Python yang ingin dienkripsi (/sdcard/file.py): " INPUT_FILE
            read -p "Masukkan nama file hasil enkripsi (/sdcard/file_enc.py): " OUTPUT_FILE

            if check_file "$INPUT_FILE"; then
                # Enkripsi file
                encrypt_file "$INPUT_FILE" "$OUTPUT_FILE"
            fi
            read -p "Tekan enter untuk kembali ke menu..."
            ;;
        
        2) # Dekripsi File
            echo -e "\n${MAGENTA}=== Dekripsi File ===${RESET}"
            read -p "Masukkan lokasi file hasil enkripsi (/sdcard/file_enc.py): " INPUT_FILE
            read -p "Masukkan nama file hasil dekripsi (/sdcard/file_dec.py): " OUTPUT_FILE

            if check_file "$INPUT_FILE"; then
                # Dekripsi file
                decrypt_file "$INPUT_FILE" "$OUTPUT_FILE"
            fi
            read -p "Tekan enter untuk kembali ke menu..."
            ;;
        
        3) # Keluar
            echo -e "\n${CYAN}Terima kasih telah menggunakan alat ini!${RESET}"
            exit 0
            ;;
        
        *) # Opsi Tidak Valid
            echo -e "${RED}Pilihan tidak valid. Silakan coba lagi.${RESET}"
            read -p "Tekan enter untuk kembali ke menu..."
            ;;
    esac
done
