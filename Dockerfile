# 1. Gunakan base image Nginx
FROM nginx:latest

# 2. Set direktori kerja ke folder default Nginx
WORKDIR /usr/share/nginx/html

# 3. Hapus file HTML bawaan Nginx
RUN rm -rf ./*

# 4. Copy index.html dari repo lokal ke dalam direktori kerja container
COPY index.html .

# 5. Dokumentasi port
EXPOSE 80

# 6. Jalankan Nginx di foreground
CMD ["nginx", "-g", "daemon off;"]
