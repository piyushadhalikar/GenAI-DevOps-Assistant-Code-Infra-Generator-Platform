# GenAI-DevOps-Assistant-Code-Infra-Generator-Platform

Built a containerized microservices GenAI DevOps platform with Flask frontend, FastAPI backend, Groq LLM integration, Docker Compose orchestration, secure environment variable injection, and AWS EC2 deployment.

# Project Folder structure - 

GenAI-DevOps-Assistant/
│
├── backend/
│   ├── app/
│   │   ├── main.py
│   │   ├── llm.py
│   │   └── formatter.py
│   ├── requirements.txt
│   └── Dockerfile
│
├── frontend/
│   ├── app.py
│   ├── templates/
│   ├── static/
│   ├── requirements.txt
│   └── Dockerfile
│
├── .env
├── docker-compose.yml
├── Jenkinsfile
├── terraform/
└── kubernetes/
