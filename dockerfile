# Menggunakan image Node.js sebagai base image
FROM node:14

# Menetapkan direktori kerja di dalam kontainer
WORKDIR /usr/src/app

# Menyalin package.json dan package-lock.json ke dalam kontainer
COPY package*.json ./

# Menginstal dependensi
RUN npm install

# Menyalin semua file ke dalam kontainer
COPY . .

# Mengekspos port aplikasi
EXPOSE 3000

# Menentukan perintah untuk menjalankan aplikasi
CMD ["npm", "start"]
