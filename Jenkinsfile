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
  }
}
