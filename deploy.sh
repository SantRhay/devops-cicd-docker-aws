#!/bin/bash

docker stop devops-cicd || true
docker rm devops-cicd || true

docker build -t devops-cicd .

docker run -d -p 80:80 --name devops-cicd devops-cicd
