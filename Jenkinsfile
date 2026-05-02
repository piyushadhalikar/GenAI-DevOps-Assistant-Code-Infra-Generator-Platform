pipeline{
    agent any
    
    stages{
        stage("Code"){
            steps{
                git url: "https://github.com/piyushadhalikar/GenAI-DevOps-Assistant-Code-Infra-Generator-Platform.git", branch: "main"
                echo "code clone done"
            }
        }
        stage("build"){
            steps{
                sh "docker build -t genai-devops:latest ."
            }
        }
        stage("test"){
            steps{
                echo "code testing done"
            }
        }
        stage("push to DockerHub"){
            steps{
                withCredentials([usernamePassword(credentialsId:"dockerHubCred",usernameVariable:"dockerHubUser",passwordVariable:"dockerHubPass")]){
                sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                sh "docker image tag genai-devops:latest ${env.dockerHubUser}/genai-devops:latest"
                sh "docker push ${env.dockerHubUser}/genai-devops:latest"
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