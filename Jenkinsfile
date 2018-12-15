pipeline {
 //agent any 
 stages{
  stage('PullCode') {
    echo "Getting the code from SCM"
  }
  post {
    echo "PullCode : Post "
  }
  stage('ValidateCode') {
    echo "Validate the code from SCM"
  }
  post {
    echo "ValidateCode : Post "
  }
  stage('PushCode') {
    echo "Push the code from SCM to App Server"
    sleep 10
  }
  post {
    echo "PushCode : Post "
  }
  }
}
