# Menggunakan image Node.js versi 14.21-alpine sebagai basis untuk langkah-langkah selanjutnya
FROM node:14.21-alpine as builder

# Menetapkan direktori kerja (working directory) di dalam container sebagai /app
WORKDIR /app

# Mengcopy file package.json dan package-lock.json (jika ada) dari direktori proyek ke dalam direktori /app di dalam container
COPY package*.json ./

# Menjalankan perintah npm install untuk menginstal dependensi proyek yang didefinisikan di dalam package.json
RUN npm install

# Mengcopy seluruh konten dari direktori proyek ke dalam direktori /app di dalam container
COPY . .

# Menjalankan perintah npm run build untuk membangun aplikasi
RUN npm run build

# Mendefinisikan bahwa container akan mendengarkan pada port 8000
EXPOSE 8000

# Menetapkan perintah default yang akan dijalankan saat container dimulai, yaitu npm run serve
CMD [ "npm", "run", "serve" ]
