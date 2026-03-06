#!/bin/bash

docker stop devops-app
docker rm devops-app

aws ecr get-login-password --region us-east-1 \
| docker login --username AWS \
--password-stdin 811936640688.dkr.ecr.us-east-1.amazonaws.com

docker pull 811936640688.dkr.ecr.us-east-1.amazonaws.com/devops-cicd-app:latest

docker run -d -p 80:80 --name devops-app \
811936640688.dkr.ecr.us-east-1.amazonaws.com/devops-cicd-app:latest
