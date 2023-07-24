pipeline {
    agent {
    node {
        label 'Node-1'
    }
}
    stages {
        stage('Install if docker is not avaliable') {
            steps {
                sh 'chmod +x ./bash/docker.sh'
                sh './bash/docker.sh'
            }
        }

        stage('Checking the Old Container') {
            steps {
                sh 'chmod +x ./bash/old-container-check.sh'
                sh './bash/old-container-check.sh'
            }
        }

        stage('Build Java-Web-Application') {
            steps {
                sh 'docker build -t dishoneprabu/java-web-app:latest .'
            }
        }
     
        stage('Launching the latest image') {
            steps {
                sh 'docker run -d --name java-web-app -h java-web-app -p 8080:8080 --restart unless-stopped dishoneprabu/java-web-app:latest'
            }
        }
    }

    post {
        always {
            echo 'Build Completed'
        }
    }
}