#!groovy

pipeline {
  agent none
  stages {
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t atulbarge1989/testnginx123:latest .'
      }
    }
     stage('Docker push') {
      agent any
      steps {
        sh 'docker push atulbarge1989/testnginx123:latest '
      }
    }
  }
}
