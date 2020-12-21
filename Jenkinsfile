node {
    stage('git SCM') {
       git branch: 'main', credentialsId: '5b7d7924-7da0-46c4-bc36-3ec9c8495d1f', url: 'https://github.com/minakshiakumar/jenkin-integration.git'
    }   
    stage(' docker image') {
      sh 'docker build -t minakshiakumar23\1.0.0 .'
    }
}