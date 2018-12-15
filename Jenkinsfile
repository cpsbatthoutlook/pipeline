pipeline {
 //agent any 
 stages{
  stage('PullCode') {
    sh ' echo Getting the code from SCM'
  }
  stage('ValidateCode') {
    sh 'echo Validate the code from SCM'
  }
  stage('PushCode') {
    sh 'echo Push the code from SCM to App Server'
    sleep 10
  }
    }
}
