pipeline {
  agent any
  tools {
     maven 'M2_HOME'
  }
  environment {
    registry = "joelleyarro/devops-pipeline"
    regeistryCredential = 'dockerhub'
  }
  stages {
    stage('Build'){
      steps {
        sh 'mvn clean'
        sh 'mvn install'
        sh 'mvn package'
      }
    }
    stage('Test'){
      steps {
        echo "mvn step"
        sleep 10
      }
    }
    stage('Deploy'){
      steps {
        script {
          docker.build registry + ":$BUILD_NUMBER"
       }
     }
  }
}
