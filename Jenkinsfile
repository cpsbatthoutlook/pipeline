pipeline {
    agent any
     environment {
            GITREPO = 'https://github.com/atinsingh/devops'
            GITREPOBRANCH = 'master'
            //NAME = 'testRun'
            //git(url:'https://github.com/atinsingh/devops', branch:'master')        
            //SUCCESS = 'It is a Success'
            DOCKERIMAGENAME = 'node-rest-api:v2.0.0'
            NODENAME = 'node-rest-api'
            DOCKERFILE='Dockerfile'
            WORKINGDIR = '.'            
    }

    stages {
        stage('Prepare') {
            steps{deleteDir();sh ' echo present working directory is ';sh 'pwd';}
        }  
        stage('BuildDockerImage') {
            steps{
                sh 'sudo docker build -t cpsbatthoutlook/${DOCKERIMAGENAME} .'                
                sh 'sudo docker inspect cpsbatthoutlook/${DOCKERIMAGENAME}'
            }
        }   
    }    
}

