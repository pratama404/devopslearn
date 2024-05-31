#!/bin/bash

# Perintah untuk build Docker image dari Dockerfile
docker build -t rahielhfz/karsajobs:latest .

# Perintah untuk login ke Docker Hub
docker login -u rahielhfz

# Perintah untuk push image ke Docker Hub
docker push rahielhfz/karsajobs:latest

# Optional: Logout dari Docker Hub setelah selesai (jika diinginkan)
# docker logout