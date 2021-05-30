
pipeline {
    agent any
    environment {
        GO_SERVER_URL = "https://$(docker inspect --format='{{(index (index .NetworkSettings.IPAddress))}}' gocd-server):8154/go"
    }
    stages {
        stage("Pulling GoCD agent image from Docker Hub...") { 
             steps {  
                sh "docker pull gocd/gocd-agent-ubuntu-16.04:v21.1.0"
            }
        }
        stage("Env Variables") {
            steps {
                echo "The build number is ${env.BUILD_NUMBER}"
                echo "You can also use \${BUILD_NUMBER} -> ${BUILD_NUMBER}"
                sh 'echo "I can access $BUILD_NUMBER in shell command as well."'
            }
        }
        stage("Running GoCD Server in Docker.") { 
            steps {  
                sh "docker run -itd --name gocd-agent -e CI=true -e "${env.GO_SERVER_URL}" gocd/gocd-agent-ubuntu-16.04:v21.1.0"
            }
        }
    }
}
