pipeline {
    agent any
     environment {
            DOCKERIMAGENAME = 'node-rest-api:v2.0.0'
            WORKINGDIR = '.'            
            MONGODB = false
    }

    stages {
        stage('Prepare') {
            steps{//deleteDir();
                sh ' echo present working directory is ';sh 'pwd';}
        }  
        stage('BuildDockerImage') {
            steps{
                sh 'sudo docker build -t cpsbatthoutlook/${DOCKERIMAGENAME} .'                
                //sh 'sudo docker inspect cpsbatthoutlook/${DOCKERIMAGENAME}'
            }
        }   
        stage('StartMongoDb') {
            steps
            {
                script { //MongoDB is running?
                    if (${MONGODB} == false ) {
                        sh 'sudo docker start mongodb'; MONGODB = true  }
                    else {sh 'MondoDB should be already up'}
                }
            }
        }

    }    
}

