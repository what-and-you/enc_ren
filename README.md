<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deskripsi Script Enkripsi Bash</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        h1, h2 {
            color: #2c3e50;
        }
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        .code {
            background-color: #2d2d2d;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            font-family: 'Courier New', Courier, monospace;
            display: block;
            white-space: pre-wrap;
            margin-bottom: 20px;
        }
        .section {
            margin-bottom: 20px;
        }
        .note {
            background-color: #fff3cd;
            padding: 10px;
            border: 1px solid #ffeeba;
            color: #856404;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>Deskripsi Script Enkripsi Bash</h1>
    <p>Script ini adalah aplikasi sederhana yang memberikan dua opsi enkripsi menggunakan teknik "tipuan". Dengan menggunakan menu interaktif berbasis terminal, pengguna dapat memilih antara dua metode enkripsi dengan tampilan yang menarik dan efek tipuan.</p>

    <div class="section">
        <h2>Fitur Utama</h2>
        <ul>
            <li><span class="highlight">Enkripsi Tingkat Hard</span>: Menggunakan teknik yang disamarkan untuk memberikan kesan enkripsi yang lebih sulit, meskipun sesungguhnya tidak benar-benar mengubah data secara mendalam.</li>
            <li><span class="highlight">Enkripsi Tingkat Easy</span>: Teknik yang lebih sederhana dan lebih cepat, tetapi juga menggunakan trik untuk membuatnya terlihat lebih rumit dari yang sebenarnya.</li>
            <li><span class="highlight">Menu Interaktif</span>: Pengguna dapat memilih antara kedua opsi enkripsi melalui menu terminal yang elegan dan mudah digunakan.</li>
            <li><span class="highlight">Efek Ketikan</span>: Setiap output pada terminal akan disertai dengan efek ketikan untuk meningkatkan pengalaman pengguna.</li>
        </ul>
    </div>

    <div class="section">
        <h2>Penjelasan Teknik Enkripsi</h2>
        <p>Script ini mengimplementasikan dua metode enkripsi yang berbeda, yang keduanya menggunakan teknik <span class="highlight">tipuan</span> untuk memberikan kesan enkripsi yang lebih kuat, padahal pada kenyataannya tidak ada perubahan data yang signifikan. Ini bertujuan untuk menunjukkan bagaimana enkripsi bisa disajikan secara menarik meskipun teknik yang digunakan sebenarnya sederhana.</p>

        <h3>Enkripsi Tingkat Hard</h3>
        <p>Metode ini bertujuan untuk memberikan kesan yang lebih rumit dengan trik tertentu yang menyembunyikan operasi sebenarnya di balik beberapa langkah yang seolah-olah lebih kompleks. Ketika dipilih, pengguna akan merasa bahwa data mereka mengalami proses enkripsi yang mendalam, tetapi sebenarnya hanya ada manipulasi tampilan yang dilakukan oleh script ini.</p>

        <h3>Enkripsi Tingkat Easy</h3>
        <p>Teknik ini lebih sederhana dan cepat, namun tetap memberikan kesan seolah-olah data sedang diproses dengan teknik yang lebih rumit. Pengguna tidak akan tahu bahwa proses ini sebenarnya hanya menjalankan beberapa langkah mudah dengan tampilan yang terlihat rumit.</p>
    </div>

    <div class="section">
        <h2>Cara Menggunakan</h2>
        <p>Untuk menggunakan script ini, cukup pilih salah satu opsi enkripsi yang tersedia pada menu utama. Berikut adalah langkah-langkah dasar:</p>
        <ol>
            <li>Jalankan script menggunakan terminal.</li>
            <li>Pilih opsi <span class="highlight">1</span> untuk Enkripsi Tingkat Hard atau <span class="highlight">2</span> untuk Enkripsi Tingkat Easy.</li>
            <li>Ikuti petunjuk lebih lanjut sesuai dengan pilihan Anda.</li>
            <li>Untuk keluar dari script, pilih opsi <span class="highlight">3</span>.</li>
        </ol>
    </div>

    <div class="section">
        <h2>Contoh Kode</h2>
        <p>Berikut adalah cuplikan kode yang menunjukkan bagian dari script utama:</p>
        <pre class="code">
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
        </pre>
    </div>

    <div class="section">
        <h2>Catatan</h2>
        <p class="note">Script ini hanya digunakan untuk tujuan pendidikan dan demonstrasi. Jangan gunakan script ini untuk enkripsi data sensitif yang sebenarnya, karena teknik yang digunakan hanya untuk tujuan tampilan.</p>
    </div>
</body>
</html>
