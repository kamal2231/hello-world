pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from Git
                git 'https://github.com/kamal2231/hello-world.git'
            }
        }
        stage('Build') {
            steps {
                // Build file using Docker
                sh 'docker build -t hello-world-html '
            }
        }
        stage('Deploy') {
            steps {
                // Deploy file to Docker container
                sh 'docker run -d -p 4000:4000 hello-world'
            }
        }
    }
    post {
        success {
            echo 'Pipeline completed successfully'
        }
        failure {
            echo 'Pipeline failed'
        }
    }
}
