#!/bin/bash

# Menampilkan prompt untuk input lokasi file
clear
echo "Masukkan lokasi script yang akan dienkripsi (contoh: /sdcard/script.sh): "
read INPUT_FILE

# Pastikan file input tersedia
if [[ -z $INPUT_FILE ]]; then
  echo "Error: Tidak ada file yang diberikan."
  exit 1
fi

OUTPUT_FILE="${INPUT_FILE%.*}_encrypted.sh"

if [[ ! -f $INPUT_FILE ]]; then
  echo "Error: File $INPUT_FILE tidak ditemukan."
  exit 1
fi

# Gunakan password tetap untuk enkripsi (disesuaikan dengan kebutuhan)
Request_Nama_Panggilan_pengguna_yang_sudah_melakukan_encript="YourSecurePassword"  # Ganti dengan password yang lebih kuat jika perlu

# Enkripsi file menggunakan AES-256-CBC
ENCRYPTED_CONTENT=$(openssl enc -aes-256-cbc -salt -pbkdf2 -pass pass:$Request_Nama_Panggilan_pengguna_yang_sudah_melakukan_encript -in "$INPUT_FILE" | base64 | tr -d '\n')

# Buat script loader
cat << EOF > "$OUTPUT_FILE"
#!/bin/bash
# Mendekripsi file secara otomatis menggunakan password enkripsi
Request_Nama_Panggilan_pengguna_yang_sudah_melakukan_encript="$Request_Nama_Panggilan_pengguna_yang_sudah_melakukan_encript"  # Gunakan password yang sesuai
PAYLOAD="\$ENCRYPTED_CONTENT"
DECRYPTED_SCRIPT=\$(echo "\$PAYLOAD" | base64 -d | openssl enc -aes-256-cbc -d -pbkdf2 -pass pass:\$Request_Nama_Panggilan_pengguna_yang_sudah_melakukan_encript 2>/dev/null)

if [[ -z "\$DECRYPTED_SCRIPT" ]]; then
  echo "Error: Decryption failed. Wrong password or corrupted script."
  exit 1
fi

# Mengeksekusi perintah yang telah didekripsi
eval "\$DECRYPTED_SCRIPT"
EOF

# Memberikan izin eksekusi pada file terenkripsi
chmod +x "$OUTPUT_FILE"

echo "File encrypted successfully: $OUTPUT_FILE"

read -p "pencet enter untuk kembali ke menu awal"
