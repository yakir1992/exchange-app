pipeline {
    agent any
    stages {

        stage('Pull GitHub Code'){
            steps{
                git 'https://github.com/yakir1992/exchange-app'
            }
        }

        stage('Build') {
            steps {
                sh "docker build -t exchange-app ."
            }
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