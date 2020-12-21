// node {
//   environment {
//     registry = "minakshiakumar23/docker-test"
//     registryCredential = 'dockerhub'
//     dockerImage = ''
//   }
//     stage('git SCM') {
//        git branch: 'main', credentialsId: '5b7d7924-7da0-46c4-bc36-3ec9c8495d1f', url: 'https://github.com/minakshiakumar/jenkin-integration.git'
//     }   
//     stage('Building image') {
//       steps{
//         script {
//           dockerImage = docker.build registry + ":$BUILD_NUMBER"
//         }
//       }
//     }
 
// }
pipeline {
  environment {
    registry = "minakshiakumar23/docker-test"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
        git branch: 'main', credentialsId: '5b7d7924-7da0-46c4-bc36-3ec9c8495d1f', url: 'https://github.com/minakshiakumar/jenkin-integration.git'
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}