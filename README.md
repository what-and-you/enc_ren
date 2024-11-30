# 🚀 **Script Enkripsi Bash** - Sederhana, Kreatif, dan Efektif! 🔒

Selamat datang di repositori **Script Enkripsi Bash**! 💻  
Dengan **dua teknik enkripsi** yang **unik dan penuh tipuan**, Anda akan diajak untuk mengeksplorasi dunia **enkripsi visual** yang mengesankan. 🧐

---

## 📜 **Deskripsi**
Script ini memberikan dua pilihan enkripsi:
- **Enkripsi Tingkat Hard**: Terlihat sangat rumit dengan efek visual yang membuat tampilan jadi lebih elegan dan **tipuan** yang menyembunyikan proses sebenarnya.
- **Enkripsi Tingkat Easy**: Lebih sederhana tetapi tetap menawarkan tampilan yang menciptakan kesan enkripsi yang kuat.

Tidak hanya itu, Anda juga bisa menikmati **menu interaktif** yang disertai dengan efek **typing** yang membuat setiap pilihan menu terasa lebih hidup.

## 🎮 **Tampilan Menu Interaktif**
Berikut adalah **Tampilan Menu** yang dapat Anda pilih di terminal:

### **Menu Utama**:

### **Demo Menu dalam GIF**:
![Menu Demo](https://media.giphy.com/media/xUOxf59VSKYZjsO8kA/giphy.gif)

> **Catatan**: GIF ini menggambarkan interaktivitas di terminal, seperti efek ketikan dan tampilan menu.

---

## 💡 **Teknik Enkripsi**
### **1. Enkripsi Tingkat Hard**
- **Efek Visual**: Tipuan yang digunakan menciptakan kesan enkripsi yang sangat kompleks.
- **Metode**: Sederhana, namun memberikan tampilan yang luar biasa rumit.

### **2. Enkripsi Tingkat Easy**
- **Efek Visual**: Menggunakan manipulasi teks untuk memberi tampilan yang lebih sederhana tetapi tetap menarik.
- **Metode**: Lebih langsung dan mudah dimengerti.

---

## 🚀 **Fitur**
- **Menu Interaktif** dengan pilihan yang jelas dan mudah digunakan.
- **Efek Ketikan**: Menciptakan efek mengetik pada setiap teks yang muncul di terminal, memberikan pengalaman yang lebih menyenangkan.
- **Warna yang Menarik** untuk setiap bagian menu, membuat tampilan lebih hidup.
- **Script yang Sederhana dan Cepat** namun tetap memberikan kesan “kompleks” dan elegan.

---

## 📝 **Cuplikan Kode**

### 1. **Fungsi Efek Ketikan**
Berikut adalah cuplikan kode dari bagian efek ketikan:
```bash
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
    echo -e "${CYAN}╭────────────────────────────────────────────────────────────╮${RESET}"
    echo -e "${CYAN}│${RESET} ${MAGENTA}≼════════════≽ ${YELLOW}Enkripsi Menu ${MAGENTA}≼════════════≽ ${CYAN}│${RESET}"
    echo -e "${CYAN}├────────────────────────────────────────────────────────────┤${RESET}"
    echo -e "${WHITE}│ ${CYAN}1.${WHITE} Enkripsi Tingkat Hard                ${CYAN}│${RESET}"
    echo -e "${WHITE}│ ${CYAN}2.${WHITE} Enkripsi Tingkat Easy                ${CYAN}│${RESET}"
    echo -e "${WHITE}│ ${RED}3.${WHITE} Keluar                               ${CYAN}│${RESET}"
    echo -e "${CYAN}╰────────────────────────────────────────────────────────────╯${RESET}"
    echo -n -e "${CYAN}Pilih menu (1/2/3): ${RESET}"
}
