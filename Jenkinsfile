pipeline {
  agent any
 
  tools {nodejs "node"}
 
  stages {
    stage('clone repo') {
      checkout scm 
    }
    stage('Building image') {
     app = docker.build('mk/nodeJs')
    }
    stage('Test image') {
      app.inside {
        echo "Test passed"
      }
    }
  }
}