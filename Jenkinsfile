pipeline {
  agent any
 
  tools {nodejs "node"}
 
  stages {
    stage('build') {
      steps {
        sh 'npm install'
      }
    }
    stage('Building image') {
      steps{
        script {
          docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
  }
}