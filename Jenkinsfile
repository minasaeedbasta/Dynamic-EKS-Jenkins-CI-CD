pipeline {
    agent {
        kubernetes {
            yamlFile 'k8s/agent-pod-template.yaml' 
        }
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/minasaeedbasta/jenkins_nodejs_example.git'
            }
        }
        stage('Build and Push Nodejs Image') {
          steps {
            container('kaniko') {
              sh '''
                /kaniko/executor --context `pwd` --destination ${DOCKERHUB_USERNAME}/nodejs-app-with-dockerfile
              '''
            }
          }
        }
    }
}