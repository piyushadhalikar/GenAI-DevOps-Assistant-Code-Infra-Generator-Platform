# GenAI-DevOps-Assistant-Code-Infra-Generator-Platform
I built a GenAI-powered DevOps automation platform using Groq-hosted Llama 3 models. It generates Dockerfiles, Jenkins pipelines, Kubernetes manifests, and Terraform scripts via a FastAPI backend, containerized using Docker, and deployed on AWS EC2 using CI/CD pipelines with Jenkins.
or
Built a containerized microservices GenAI DevOps platform with Flask frontend, FastAPI backend, Groq LLM integration, Docker Compose orchestration, secure environment variable injection, and AWS EC2 deployment.

## User Flow - 

User enters DevOps request
        ↓
Frontend Web Page (HTML/CSS/JS)
        ↓
FastAPI Backend (/generate)
        ↓
Groq LLM
        ↓
Generated DevOps Output
        ↓
Readable Output Box on Web Page

## Architechture-

User → Frontend Web Page (HTML/CSS/JS) → FastAPI backend → Groq LLM (Llama 3)
                                                                ↓
                                                        DevOps Prompt Engine
                                                                ↓
                                                        Docker / Jenkins / K8s output
                                                                ↓
                                                        JSON Response API

## Tech Stack- 

GenAI:
Groq API (Llama 3 70B / Mixtral)
Backend:
FastAPI
Uvicorn
DevOps:
Linux (Ubuntu EC2)
Git & GitHub
Docker
Jenkins
Kubernetes (basic YAML deploy)
Terraform (EC2 provisioning)
