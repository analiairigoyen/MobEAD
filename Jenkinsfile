pipeline {  environment {
    registry = "osanamgcj/mobead_image_build"
    registryCredential = 'docker'
    dockerImage = ''
  }
    agent any 

    stages { 
        stage('Lint Dockerfile'){ 
            steps{
                echo "Pipeline Usando Jenkinsfile"
                sh 'docker run --rm -i hadolint/hadolint < Dockerfile'
            }
        }
    
        stage('Build image') {
            steps{
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }

        stage('Delivery image') {
            steps{
                dockerImage.push("$BUILD_NUMBER")
            }
        }
    } 
}