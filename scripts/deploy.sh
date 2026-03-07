#!/bin/bash

echo "=================================="
echo "Iniciando Deploy da Aplicação"
echo "=================================="

IMAGE="811936406088.dkr.ecr.us-east-1.amazonaws.com/devops-cicd-app:latest"
CONTAINER="devops-app"

echo "Baixando imagem mais recente do ECR..."
docker pull $IMAGE

echo "Parando container antigo..."
docker stop $CONTAINER || true

echo "Removendo container antigo..."
docker rm $CONTAINER || true

echo "Subindo novo container..."
docker run -d \
-p 80:80 \
--name $CONTAINER \
$IMAGE

echo "=================================="
echo "Deploy finalizado com sucesso 🚀"
echo "=================================="
