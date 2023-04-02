pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh "docker build -t exchange-app ."
            }
        }
        stage('Deploy') {
            steps {
                sh "docker run -d -p 8080:80 exchange-app"
            }
        }
        stage('Test') {
            steps {
                sh "python setup.py test"
            }
        }
    }
}