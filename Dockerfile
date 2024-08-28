# Use a imagem bitnami/kubectl como base
FROM bitnami/kubectl:latest

# Instale o curl
USER root
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Mantenha o usuário não root
USER 1001