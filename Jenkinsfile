pipeline {
    agent any
     environment {
            GITREPO = 'https://github.com/atinsingh/devops'
            DOCKERIMAGENAME = 'node-rest-api:v2.0.0'
            NODENAME = 'node-rest-api'
            MONGODB = false          
    }
    stages {
        stage('Prepare') {
            steps{  //deleteDir();
                sh ' echo present working directory is ';sh 'pwd';}
        }  
        stage('BuildDockerImage') {
            steps{
                sh 'sudo docker build -t cpsbatthoutlook/${DOCKERIMAGENAME} .'                
                sh 'sudo docker inspect cpsbatthoutlook/${DOCKERIMAGENAME}'
            }
        stage('StartMongoDb') {
            steps{
                script { //MongoDB is running?
                    if (MONGODB == false ) {
                        sh 'sudo docker start mongodb'; MONGODB = true  }
                    else {sh 'MondoDB should be already up'}
                }
        }
        stage('DockerStartNodeJs') {
            agent {
                docker { 
                    image 'cpsbatthoutlook/${DOCKERIMAGENAME}'
                    reuseNode true
                    args '-p 8082:3000'
                }
            }
            steps{echo "sh test the server to be running fine "}
        }   
    }  
}
