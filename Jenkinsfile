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
              sh '/kaniko/executor --context `pwd` --destination minabasta/nodejs-app-with-dockerfile'
            }
          }
        }
        stage('Depoly the app on the cluster') {
          steps {
            container('kubectl') {
              sh 'kubectl apply -f k8s/app.yaml'
            }
          }
        }
    }
}