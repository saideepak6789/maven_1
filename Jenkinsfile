pipeline {
    agent {
    node {
        label 'Prod-2'
    }
}
  stages {
    stage('Build Java-Web-Application') {
      steps {
        sh 'docker build -t dishoneprabu/java-web-app:latest .'
      }
    }
    stage('Running the Build') {
      steps {
        sh 'docker run -d --name java-web-app -h java-web-app --net Home --ip 192.168.1.66 -p 8080:8080 dishoneprabu/java-web-app:latest'
      }
    }
  }
  post {
    always {
      sh 'Build Completed'
    }
  }
}