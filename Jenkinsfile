pipeline {
    agent { docker { image 'node:12.20.0-alpine3.10' } }
    stages {
        stage ('build project') {
            steps {
                sh 'node server.js'
            }
        }
    }
}