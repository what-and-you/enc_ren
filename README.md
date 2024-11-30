<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deskripsi Script Enkripsi Bash</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fb;
            color: #2c3e50;
        }
        header {
            background: #2c3e50;
            color: white;
            padding: 20px;
            text-align: center;
        }
        h1 {
            font-size: 2.5em;
            margin: 0;
        }
        h2 {
            font-size: 1.8em;
            color: #34495e;
            margin-top: 20px;
            border-bottom: 2px solid #ecf0f1;
            padding-bottom: 10px;
        }
        p, ul, ol {
            font-size: 1.1em;
            line-height: 1.6;
            margin: 20px 0;
            padding: 0 15px;
        }
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        ul {
            list-style-type: none;
            padding-left: 0;
        }
        ul li {
            margin-bottom: 10px;
            padding-left: 1.5em;
            text-indent: -1.5em;
        }
        .note {
            background-color: #fff3cd;
            padding: 15px;
            border: 1px solid #ffeeba;
            color: #856404;
            border-radius: 5px;
            margin-top: 30px;
        }
        .code {
            background-color: #2d2d2d;
            color: white;
            padding: 20px;
            border-radius: 8px;
            font-family: 'Courier New', Courier, monospace;
            margin-top: 30px;
            overflow-x: auto;
            box-shadow: 0px 3px 10px rgba(0,0,0,0.2);
        }
        .section {
            margin-bottom: 40px;
        }
        .card {
            background: #ffffff;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0,0,0,0.1);
            margin-bottom: 30px;
            padding: 25px;
        }
        .card h3 {
            color: #2980b9;
            margin-bottom: 15px;
        }
        .card p {
            margin-bottom: 10px;
        }
        footer {
            background-color: #2c3e50;
            color: white;
            text-align: center;
            padding: 15px;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

<header>
    <h1>Deskripsi Script Enkripsi Bash</h1>
</header>

<main style="padding: 0 15px;">
    <section class="section">
        <div class="card">
            <h2>Fitur Utama</h2>
            <ul>
                <li><span class="highlight">Enkripsi Tingkat Hard</span>: Teknik yang disamarkan untuk memberikan kesan enkripsi yang lebih sulit, meskipun sesungguhnya tidak benar-benar mengubah data.</li>
                <li><span class="highlight">Enkripsi Tingkat Easy</span>: Teknik sederhana dengan tampilan yang terlihat lebih rumit dari yang sebenarnya.</li>
                <li><span class="highlight">Menu Interaktif</span>: Pilihan opsi yang mudah digunakan dalam menu terminal.</li>
                <li><span class="highlight">Efek Ketikan</span>: Efek ketikan untuk meningkatkan pengalaman pengguna saat menjalankan script.</li>
            </ul>
        </div>
    </section>

    <section class="section">
        <div class="card">
            <h2>Penjelasan Teknik Enkripsi</h2>
            <p>Script ini menggunakan dua metode enkripsi yang terlihat sangat rumit namun sesungguhnya menggunakan teknik tipuan yang sederhana. Meskipun terlihat seperti teknik enkripsi yang kuat, data yang diproses sebenarnya tidak mengalami perubahan signifikan. Teknik ini hanya bertujuan untuk menunjukkan cara tampilan enkripsi yang terlihat kompleks.</p>

            <h3>Enkripsi Tingkat Hard</h3>
            <p>Enkripsi ini menyembunyikan operasi sebenarnya di balik proses yang seolah-olah lebih rumit. Ini memberikan kesan enkripsi yang lebih dalam, tetapi sebenarnya hanya manipulasi tampilan.</p>

            <h3>Enkripsi Tingkat Easy</h3>
            <p>Ini adalah metode yang lebih sederhana dengan proses yang cepat, tetapi tetap terlihat seperti enkripsi yang lebih rumit bagi pengguna.</p>
        </div>
    </section>

    <section class="section">
        <div class="card">
            <h2>Cara Menggunakan</h2>
            <p>Untuk menggunakan script ini, ikuti langkah-langkah berikut:</p>
            <ol>
                <li>Buka terminal dan jalankan script.</li>
                <li>Pilih opsi <span class="highlight">1</span> untuk Enkripsi Tingkat Hard atau <span class="highlight">2</span> untuk Enkripsi Tingkat Easy.</li>
                <li>Ikuti petunjuk lebih lanjut sesuai dengan pilihan Anda.</li>
                <li>Jika ingin keluar dari script, pilih opsi <span class="highlight">3</span>.</li>
            </ol>
        </div>
    </section>

    <section class="section">
        <div class="card">
            <h2>Contoh Kode</h2>
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
    </section>

    <section class="section">
        <div class="card">
            <h2>Catatan</h2>
            <p class="note">Script ini hanya untuk tujuan pendidikan dan demonstrasi. Teknik yang digunakan dalam enkripsi tidak dapat diandalkan untuk enkripsi data yang sensitif.</p>
        </div>
    </section>
</main>

<footer>
    <p>&copy; 2024 Script Enkripsi Bash. All rights reserved.</p>
</footer>

</body>
</html>
