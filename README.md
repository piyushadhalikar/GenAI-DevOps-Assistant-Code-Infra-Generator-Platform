# GenAI-DevOps-Assistant-Code-Infra-Generator-Platform

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

## Architechture

User → FastAPI → Groq LLM (Llama 3)
                     ↓
            DevOps Prompt Engine
                     ↓
        Docker / Jenkins / K8s output
                     ↓
            JSON Response API
