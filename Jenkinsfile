pipeline {
    agent {
    node {
        label 'Node-1'
    }
}
    stages {
        stage('Install if docker is not avaliable') {
            steps {
                sh './docker.sh'
            }
        }

        stage('Build Java-Web-Application') {
            steps {
                sh 'docker build -t dishoneprabu/java-web-app:latest .'
            }
        }

        stage('Checking the Old Container') {
            steps {
                sh './old-container-check.sh'
            }
        }

        stage('Launching the latest image') {
            steps {
                sh 'docker run -d --name java-web-app -h java-web-app -p 8080:8080 dishoneprabu/java-web-app:latest'
            }
        }
    }

    post {
        always {
            echo 'Build Completed'
        }
    }
}