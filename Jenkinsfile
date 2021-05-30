
pipeline {
    agent any

    stages {
        stage("Pulling GoCD agent image from Docker Hub...") { 
             steps {  
                sh "docker pull gocd/gocd-agent-ubuntu-16.04:v21.1.0"
            }
        }
       
        stage("Running GoCD Server in Docker.") { 
            steps {  
                script {docker run -itd --name gocd-agent -e CI=true -e 
                        GO_SERVER_URL=https://$(docker inspect --format='{{(index (index .NetworkSettings.IPAddress))}}' gocd-server):8154/go 
                            gocd/gocd-agent-alpine-3.8:v18.10.0                 
               }        
            }
        }
    }
}



