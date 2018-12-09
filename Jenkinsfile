pipeline {
  agent any
  stages {
    stage('Checkout') {
      steps {
        sh 'svn checkout'
        sleep 30
      }
    }
    stage('Step2') {
      parallel {
        stage('Step2') {
          steps {
            sleep 5
            echo 'Hi There'
          }
        }
        stage('2nd pipeline') {
          steps {
            sh '''echo "This is good starting second one "
sleep 15'''
          }
        }
      }
    }
  }
}