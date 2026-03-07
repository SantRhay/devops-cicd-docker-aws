# 🚀 DevOps CI/CD Pipeline com Docker, GitHub Actions e AWS

Projeto demonstrando um pipeline completo de *CI/CD (Continuous Integration e Continuous Deployment)* utilizando Docker, GitHub Actions e AWS.

Este projeto automatiza o processo de *build, armazenamento e deploy de uma aplicação containerizada*.

---

# 📌 Arquitetura do Projeto

O fluxo da aplicação funciona da seguinte forma:

Developer → GitHub → GitHub Actions → Docker Build → AWS ECR → AWS EC2 → Container em execução

---

# 🏗 Arquitetura


                +-------------+
                |  Developer  |
                +-------------+
                        |
                        v
                +-------------+
                |   GitHub    |
                +-------------+
                        |
                        v
            +-----------------------+
            |   GitHub Actions CI   |
            +-----------------------+
              |               |
              v               v
      Build Docker      Test Pipeline
              |
              v
        Push Image
              |
              v
        +-----------+
        | AWS ECR   |
        +-----------+
              |
              v
        +-----------+
        | AWS EC2   |
        +-----------+
              |
              v
        Docker Container


---

# ⚙️ Tecnologias Utilizadas

- Docker
- GitHub Actions
- AWS EC2
- AWS ECR
- Nginx
- Linux
- Bash

---

# 📂 Estrutura do Projeto


devops-cicd-docker-aws
│
├── app/
│   └── index.html
│
├── docker/
│   └── Dockerfile
│
├── scripts/
│   └── deploy.sh
│
├── docs/
│   └── architecture.md
│
├── .github/
│   └── workflows/
│       └── pipeline.yml
│
└── README.md


---

# 🔄 Pipeline CI/CD

O pipeline executa automaticamente quando há push no repositório.

Etapas do pipeline:

1️⃣ Checkout do código  
2️⃣ Build da imagem Docker  
3️⃣ Login no Amazon ECR  
4️⃣ Push da imagem para o ECR  
5️⃣ Deploy automático na EC2  

---

# 🐳 Build da Imagem Docker


docker build -t devops-cicd-app .


---

# ☁️ Push para o Amazon ECR


docker push <ECR_REPOSITORY>


---

# 🚀 Deploy na EC2

O deploy é feito utilizando o script:


scripts/deploy.sh


O script executa:

- Pull da imagem mais recente
- Parada do container antigo
- Remoção do container antigo
- Criação de novo container

---

# 🌐 Acesso à aplicação

Após o deploy, a aplicação pode ser acessada via:


http://32.192.254.167


---

# 📊 Objetivo do Projeto

Demonstrar na prática:

- Implementação de pipeline CI/CD
- Deploy automatizado
- Containerização com Docker
- Integração com AWS
- Infraestrutura moderna baseada em containers

---

# 🎯 Próximas melhorias

- Terraform para provisionamento da infraestrutura
- Monitoramento com Prometheus e Grafana
- Deploy Blue/Green
- Kubernetes deployment

---

# 💻 Autora
- Rayane Santana

Projeto desenvolvido para estudo e portfólio DevOps.
