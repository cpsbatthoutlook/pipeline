pipeline {
 //agent any 
 stages{
  stage('PullCode') {
    sh ' echo Getting the code from SCM'
  }
  post {
  sh 'echo PullCode : Post '
  }
  stage('ValidateCode') {
  sh 'echo Validate the code from SCM'
  }
  post {
    sh 'echo ValidateCode : Post '
  }
  stage('PushCode') {
    sh 'echo Push the code from SCM to App Server'
    sleep 10
  }
  post {
    sh 'echo PushCode : Post '
  }
  }
}
