
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
               sh "docker_command.sh"  
            }
        }
    }
}



