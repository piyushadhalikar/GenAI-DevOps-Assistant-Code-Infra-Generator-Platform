# 🤖 GenAI DevOps Assistant — Code & Infra Generator Platform

> An enterprise-grade GenAI-powered DevOps automation platform that generates production-ready infrastructure code using Large Language Models — deployed on AWS EC2 with a full CI/CD pipeline.

---

## 📌 Project Overview

This platform leverages **Groq-hosted Llama 3** models to automate the generation of DevOps infrastructure artifacts including:

- 🐳 **Dockerfiles** — containerization configurations
- 🔁 **Jenkins Pipelines** — CI/CD automation scripts
- ☸️ **Kubernetes Manifests** — container orchestration YAMLs
- 🌍 **Terraform Scripts** — cloud infrastructure provisioning

Built with a **FastAPI** backend, **Flask-served HTML/CSS** frontend, and deployed on **AWS EC2** via Jenkins CI/CD pipelines with full Docker containerization.

---

## 🎯 Key Features

- ✅ Natural language to DevOps code generation via LLM prompt engineering
- ✅ Real-time output rendering on the web interface
- ✅ REST API backend with `/generate` endpoint
- ✅ Groq LLM integration (Llama 3)
- ✅ Dockerized microservices architecture
- ✅ Kubernetes deployment support
- ✅ Terraform-based EC2 infrastructure provisioning
- ✅ Jenkins CI/CD pipeline for automated deployments
- ✅ Secure environment variable injection (no hardcoded secrets)

---

## 🏗️ Architecture

```
User
 │
 ▼
Frontend Web Page (HTML / CSS)
 │
 ▼
FastAPI Backend  ──── /generate endpoint
 │
 ▼
Groq LLM (Llama 3)
 │
 ▼
DevOps Prompt Engine
 │
 ├──► Dockerfile Output
 ├──► Jenkins Pipeline Output
 ├──► Kubernetes Manifest Output
 └──► Terraform Script Output
 │
 ▼
JSON Response API
 │
 ▼
Rendered Output Box on Web Page
```

---

## 🔄 User Flow

```
User enters a DevOps request (e.g., "Generate a Dockerfile for a Node.js app")
        │
        ▼
  Frontend Web Page (HTML/CSS)
        │
        ▼
  FastAPI Backend  →  POST /generate
        │
        ▼
    Groq LLM API  (Llama 3)
        │
        ▼
  Generated DevOps Infrastructure Code
        │
        ▼
  Readable Output Rendered on Web Page
```

---

## 🧰 Tech Stack

### 🤖 Generative AI
| Tool | Purpose |
|------|---------|
| Groq API | LLM inference engine (ultra-fast) |
| Llama 3 | Core language model for code generation |
| Prompt Engineering | Structured DevOps-specific prompts |

### ⚙️ Backend
| Tool | Purpose |
|------|---------|
| FastAPI | REST API framework |
| Uvicorn | ASGI server for FastAPI |
| Python | Core backend language |

### 🌐 Frontend
| Tool | Purpose |
|------|---------|
| HTML / CSS | Web interface |
| Flask (static serving) | Frontend delivery |

### 🚀 DevOps & Infrastructure
| Tool | Purpose |
|------|---------|
| Docker | Containerization |
| Docker Compose | Multi-container orchestration |
| Kubernetes | Container deployment & scaling |
| Terraform | EC2 infrastructure provisioning (IaC) |
| Jenkins | CI/CD pipeline automation |
| AWS EC2 | Cloud hosting (Ubuntu) |
| Git & GitHub | Version control & source management |
| Linux (Ubuntu) | Server OS |


## 🚀 Getting Started

### Prerequisites

- Python 3.10+
- Docker & Docker Compose
- Groq API Key → [console.groq.com](https://console.groq.com)
- AWS CLI configured (for Terraform)
- Jenkins (for CI/CD)

### 1. Clone the Repository

```bash
git clone https://github.com/piyushadhalikar/GenAI-DevOps-Assistant-Code-Infra-Generator-Platform
cd GenAI-DevOps-Assistant-Code-Infra-Generator-Platform
```

### 2. Configure Environment Variables

```bash
vim .env
```

Edit `.env` and add your Groq API key:

```env
GROQ_API_KEY=your_groq_api_key_here
```

### 3. Run with Docker Compose

```bash
docker-compose up --build
```

## 🛠️ CI/CD Pipeline (Jenkins)

```
GitHub Push
    │
    ▼
Jenkins Trigger (Webhook)
    │
    ▼
Clone Repository
    │
    ▼
Docker Build & Tag Image
    │
    ▼
Push to Docker Hub / ECR
    │
    ▼
Deploy to AWS EC2 (SSH / kubectl)
    │
    ▼
Health Check & Notify
```

---

## ☁️ Infrastructure Provisioning (Terraform)

Run:
```bash
cd terraform
terraform init
terraform plan
terraform apply
```

---

## ☸️ Kubernetes Deployment

```bash
kubectl apply -f kubernetes/deployment-backend.yaml
kubectl apply -f kubernetes/deployment-frontend.yaml
kubectl get pods
```

---

## 🔐 Security Practices

- 🔒 API keys injected via environment variables — **never hardcoded**
- 🔒 `.env` is listed in `.gitignore`
- 🔒 Docker secrets management for production
- 🔒 Jenkins credentials store for CI/CD secrets


## 🧠 What I Learned

- Designing and deploying a **full-stack GenAI application** end-to-end
- **Prompt engineering** for structured, context-aware DevOps code generation
- Integrating **Groq LLM API** with a FastAPI backend
- Containerizing microservices with **Docker & Docker Compose**
- Deploying and managing workloads with **Kubernetes**
- Provisioning cloud infrastructure using **Terraform IaC**
- Building and managing **Jenkins CI/CD pipelines**
- Secure **AWS EC2 deployment** with environment variable management

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

1. Fork the repository
2. Create your feature branch: `git checkout -b feature/your-feature`
3. Commit your changes: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature/your-feature`
5. Open a Pull Request


## 👤 Author

**Your Name**
- GitHub: [piyushadhalikar](https://github.com/piyushadhalikar)
- LinkedIn: [linkedin.com/in/your-profile](https://linkedin.com/in/your-profile)

---

<div align="center">
  <strong>⭐ If you found this project useful, please give it a star!</strong>
</div>
