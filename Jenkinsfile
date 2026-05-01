pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'YOUR_GITHUB_REPO'
            }
        }

        stage('Build Docker') {
            steps {
                sh 'docker build -t genai-devops .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8000:8000 genai-devops'
            }
        }
    }
}