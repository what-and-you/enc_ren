# Deskripsi Script Enkripsi Bash

Selamat datang di repositori script enkripsi Bash! Script ini menyediakan dua teknik enkripsi yang terlihat rumit namun sebenarnya menggunakan teknik **tipuan** yang sederhana. Walaupun script ini memperlihatkan proses enkripsi yang terlihat lebih rumit, sebenarnya data yang diproses tidak benar-benar terenkripsi.

## Fitur Utama

- **Enkripsi Tingkat Hard**: Teknik yang terlihat lebih rumit, namun sebenarnya hanya manipulasi tampilan.
- **Enkripsi Tingkat Easy**: Teknik yang lebih sederhana dengan tampilan yang lebih rumit dari yang sebenarnya.
- **Menu Interaktif**: Pilihan opsi yang mudah digunakan dalam terminal.
- **Efek Ketikan**: Menambahkan efek ketikan untuk pengalaman pengguna yang lebih menarik.

## Penjelasan Teknik Enkripsi

Script ini menggunakan dua metode enkripsi yang berbeda:

### 1. Enkripsi Tingkat Hard
Metode ini menyembunyikan operasi sebenarnya di balik proses yang tampak rumit. Meskipun terlihat seperti enkripsi yang kuat, data yang diproses sebenarnya tidak mengalami perubahan.

### 2. Enkripsi Tingkat Easy
Metode yang lebih sederhana namun tetap memberikan kesan seperti enkripsi yang rumit. Proses ini sangat cepat dan efisien, meskipun hasilnya tidak jauh berbeda dengan metode Hard.

## Cara Menggunakan

1. Buka terminal di sistem Anda.
2. Unduh dan jalankan script.
3. Pilih salah satu opsi:
   - Tekan **1** untuk Enkripsi Tingkat Hard.
   - Tekan **2** untuk Enkripsi Tingkat Easy.
   - Tekan **3** untuk keluar dari script.
4. Ikuti petunjuk yang muncul sesuai dengan pilihan Anda.

## Contoh Kode

Berikut adalah contoh kode yang digunakan dalam script:

```bash
#!/bin/bash

# Warna untuk mempercantik tampilan
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
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

show_menu() {
    clear
    echo -e "${CYAN}╭────────────────────────────────────────────────────────────────╮${RESET}"
    echo -e "${CYAN}│${RESET} ${MAGENTA}≼════════════≽ ${YELLOW}Enkripsi Menu ${MAGENTA}≼════════════≽ ${CYAN}│${RESET}"
    echo -e "${CYAN}├────────────────────────────────────────────────────────────────┤${RESET}"
    echo -e "${WHITE}│ ${CYAN}1.${WHITE} Enkripsi Tingkat Hard                ${CYAN}│${RESET}"
    echo -e "${WHITE}│ ${CYAN}2.${WHITE} Enkripsi Tingkat Easy                ${CYAN}│${RESET}"
    echo -e "${WHITE}│ ${RED}3.${WHITE} Keluar                               ${CYAN}│${RESET}"
    echo -e "${CYAN}╰────────────────────────────────────────────────────────────────╯${RESET}"
    echo -n -e "${CYAN}Pilih menu (1/2/3): ${RESET}"
}
