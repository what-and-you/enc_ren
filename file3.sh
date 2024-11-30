#!/bin/bash

# Pastikan file input tersedia
if [[ -z $1 ]]; then
  echo "Usage: $0 <file_to_encrypt>"
  exit 1
fi

INPUT_FILE=$1
OUTPUT_FILE="${INPUT_FILE%.*}_encrypted.sh"

if [[ ! -f $INPUT_FILE ]]; then
  echo "Error: File $INPUT_FILE not found."
  exit 1
fi

# Meminta password dari pengguna untuk enkripsi
echo "Masukkan nama pengguna script untuk enkripsi: "
read -s Request_Nama_Panggilan_pengguna_yang_sudah_melakukan_encript

# Enkripsi file menggunakan AES-256-CBC
ENCRYPTED_CONTENT=$(openssl enc -aes-256-cbc -salt -pbkdf2 -pass pass:$Request_Nama_Panggilan_pengguna_yang_sudah_melakukan_encript -in "$INPUT_FILE" | base64 | tr -d '\n')

# Buat script loader
cat << EOF > "$OUTPUT_FILE"
#!/bin/bash
# Mendekripsi file secara otomatis menggunakan password enkripsi
Request_Nama_Panggilan_pengguna_yang_sudah_melakukan_encript="$Request_Nama_Panggilan_pengguna_yang_sudah_melakukan_encript" #yang bagian lu hapus karena bisa menyebabkan error!!!
PAYLOAD="$ENCRYPTED_CONTENT"
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
