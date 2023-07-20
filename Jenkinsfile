pipeline {
    agent {
    node {
        label 'Prod-2'
    }
}
    stages {
        stage('Checkout') {
            steps {
                // Check out the source code from your version control system
                git 'https://github.com/dishoneprabu/maven.git'
            }
        }

        stage('Build and Generate Documentation') {
            steps {
                // Assuming your project uses Maven, you can build and generate documentation using Javadoc
                sh 'sphinx-quickstart' // Build the project
                sh 'cp _build/html/index.html ./index.html' // Generate Javadoc documentation
            }
        }

        stage('Publish Documentation') {
            steps {
                // Assuming you have a web server or storage location to host the documentation
                // You can copy the generated documentation to the appropriate location
                // For example, if using Apache HTTP server:
                sh 'cp -R target/site/apidocs/* /var/www/html/docs/'
            }
        }
    }
}
