pipeline {
  agent any
  tools {
     maven 'M2_HOME'
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
        echo "deploy step"
        sleep 10
      }
    }
  }
}
