pipeline {
  agent any
 
  tools {nodejs "node"}
 
  stages {
    stage('clone repo') {
      checkout scm
      def customImage = docker.build("my-image:${env.BUILD_ID}")
      customImage.inside {
        sh 'make test'
    } 
    }
  }
}