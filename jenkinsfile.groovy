pipeline {  environment {
    registry = "osanamgcj/mobead_image_build"
    registryCredential = 'docker'
  }
    agent any 

    stages { 
        stage('Lint Dockerfile'){ 
            steps{
                echo "Pipeline Usando Jenkinsfile"
                sh 'docker run --rm -i hadolint/hadolint < Dockerfile'
            }
        }
    
        stage('Building image') {
            steps{
                script {
                    docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Build and Publish Docker Image'){ 
            steps{
                echo "Pipeline Usando Jenkinsfile"
            }
        } 
    } 
}