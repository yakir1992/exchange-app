pipeline {
    agent any

    environment {
        DOCKERHUB_REPO = 'yakir1992/exchange-app'
        IMAGE_TAG = "${env.BUILD_NUMBER}"
    }
    stages {

        stage('Pull GitHub Code'){
            steps{
                git 'https://github.com/yakir1992/exchange-app'
            }
        }

        stage('Build') {
            steps {
                sh "docker build -t yakir1992/exchange-app:1.0" .
                sh "docker tag yakir1992/exchange-app:1.0" .
                sh "docker push yakir1992/exchange-app:1.0"    
            }
        stage('Deploy') {
            steps {
                sh "docker run -d -p 80:5000 exchange-app"
            }
        }
        stage('Test') {
            steps {
                sh "python setup.py test"
            }
        }
    }
}