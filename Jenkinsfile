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
    
        stage('Building and Publish image') {
            steps{
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                    dockerImage.push()
                }
            }
        }
    } 
}