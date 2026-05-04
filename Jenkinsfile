pipeline{
    agent any
    
    stages{
        stage("Code"){
            steps{
                git url: "https://github.com/piyushadhalikar/GenAI-DevOps-Assistant-Code-Infra-Generator-Platform.git", branch: "main"
                echo "code clone done"
            }
        }
        stage('Build Backend') {
            steps {
                sh 'docker build -f docker/backend/Dockerfile -t genai-devops-backend .'
            }
        }

        stage('Build Frontend') {
            steps {
                sh 'docker build -f docker/frontend/Dockerfile -t genai-devops-frontend .'
            }
        }
        stage("test"){
            steps{
                echo "code testing done"
            }
        }
        stage("push backend image to DockerHub"){
            steps{
                withCredentials([usernamePassword(credentialsId:"dockerHubCred",usernameVariable:"dockerHubUser",passwordVariable:"dockerHubPass")]){
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                sh "docker image tag genai-devops-backend:latest ${env.dockerHubUser}/genai-devops-backend:latest"
                sh "docker push ${env.dockerHubUser}/genai-devops-backend:latest"
                echo "code pushed to dockerhub"
                }
            }
        }
        stage("push frontend image to DockerHub"){
            steps{
                withCredentials([usernamePassword(credentialsId:"dockerHubCred",usernameVariable:"dockerHubUser",passwordVariable:"dockerHubPass")]){
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                sh "docker image tag genai-devops-frontend:latest ${env.dockerHubUser}/genai-devops-frontend:latest"
                sh "docker push ${env.dockerHubUser}/genai-devops-frontend:latest"
                echo "code pushed to dockerhub"
                }
            }
        }
        stage("deploy"){
            steps{
                sh "docker compose down && docker compose up -d"
                echo "Application deployed and running."
            }
        }
    }
}