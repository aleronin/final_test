pipeline {

    environment {
      registry = "docker_hub_account/repository_name"
      registryCredential = 'dockerhub'
    }

    agent any

    stages {
        stage('Build') {
            steps {
                sh 'echo "Hello World"'
                sh '''
                    echo "Multiline shell steps works too"
                    ls -lah
                '''
            }
        }
    }
}
